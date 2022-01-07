; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_msi_test.c_ntb_msit_db_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_msi_test.c_ntb_msit_db_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_msit_ctx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.ntb_msi_desc* }
%struct.ntb_msi_desc = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ntb_msit_db_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_msit_db_event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_msit_ctx*, align 8
  %6 = alloca %struct.ntb_msi_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.ntb_msit_ctx*
  store %struct.ntb_msit_ctx* %11, %struct.ntb_msit_ctx** %5, align 8
  %12 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ntb_db_read(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ntb_db_clear(i32 %18, i32 %19)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %77, %2
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 32
  br i1 %24, label %25, label %80

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %77

32:                                               ; preds = %25
  %33 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ntb_peer_spad_read(i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %77

41:                                               ; preds = %32
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.ntb_msi_desc* @kcalloc(i32 %42, i32 4, i32 %43)
  store %struct.ntb_msi_desc* %44, %struct.ntb_msi_desc** %6, align 8
  %45 = load %struct.ntb_msi_desc*, %struct.ntb_msi_desc** %6, align 8
  %46 = icmp ne %struct.ntb_msi_desc* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %77

48:                                               ; preds = %41
  %49 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %5, align 8
  %50 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load %struct.ntb_msi_desc*, %struct.ntb_msi_desc** %55, align 8
  %57 = call i32 @kfree(%struct.ntb_msi_desc* %56)
  %58 = load %struct.ntb_msi_desc*, %struct.ntb_msi_desc** %6, align 8
  %59 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store %struct.ntb_msi_desc* %58, %struct.ntb_msi_desc** %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %5, align 8
  %68 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %66, i32* %73, align 8
  %74 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @ntb_msit_copy_peer_desc(%struct.ntb_msit_ctx* %74, i32 %75)
  br label %77

77:                                               ; preds = %48, %47, %40, %31
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %21

80:                                               ; preds = %21
  ret void
}

declare dso_local i32 @ntb_db_read(i32) #1

declare dso_local i32 @ntb_db_clear(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ntb_peer_spad_read(i32, i32, i32) #1

declare dso_local %struct.ntb_msi_desc* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ntb_msi_desc*) #1

declare dso_local i32 @ntb_msit_copy_peer_desc(%struct.ntb_msit_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
