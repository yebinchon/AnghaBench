; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_allocate_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_allocate_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { i32, %struct.pvscsi_ctx* }
%struct.pvscsi_ctx = type { i32*, i64 }

@SGL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvscsi_adapter*)* @pvscsi_allocate_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_allocate_sg(%struct.pvscsi_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvscsi_adapter*, align 8
  %4 = alloca %struct.pvscsi_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %3, align 8
  %6 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %6, i32 0, i32 1
  %8 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %7, align 8
  store %struct.pvscsi_ctx* %8, %struct.pvscsi_ctx** %4, align 8
  %9 = load i32, i32* @SGL_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ugt i64 4, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUILD_BUG_ON(i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %68, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %14
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* @SGL_SIZE, align 4
  %23 = call i32 @get_order(i32 %22)
  %24 = call i64 @__get_free_pages(i32 %21, i32 %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = ptrtoint i32* %33 to i64
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = call i32 @IS_ALIGNED(i64 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %20
  br label %46

46:                                               ; preds = %59, %45
  %47 = load i32, i32* %5, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = ptrtoint i32* %52 to i64
  %54 = load i32, i32* @SGL_SIZE, align 4
  %55 = call i32 @get_order(i32 %54)
  %56 = call i32 @free_pages(i64 %53, i32 %55)
  %57 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %5, align 4
  %62 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %62, i32 -1
  store %struct.pvscsi_ctx* %63, %struct.pvscsi_ctx** %4, align 8
  br label %46

64:                                               ; preds = %46
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %74

67:                                               ; preds = %20
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %72 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %71, i32 1
  store %struct.pvscsi_ctx* %72, %struct.pvscsi_ctx** %4, align 8
  br label %14

73:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %64
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
