; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_msi_test.c_ntb_msit_copy_peer_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_msi_test.c_ntb_msit_copy_peer_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_msit_ctx = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, %struct.ntb_msi_desc* }
%struct.ntb_msi_desc = type { i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Found %d interrupts on peer %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_msit_ctx*, i32)* @ntb_msit_copy_peer_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_msit_copy_peer_desc(%struct.ntb_msit_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.ntb_msit_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ntb_msi_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.ntb_msit_ctx* %0, %struct.ntb_msit_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load %struct.ntb_msi_desc*, %struct.ntb_msi_desc** %14, align 8
  store %struct.ntb_msi_desc* %15, %struct.ntb_msi_desc** %6, align 8
  %16 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %55, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %24
  %29 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 2, %33
  %35 = add nsw i32 %34, 1
  %36 = call i8* @ntb_peer_spad_read(%struct.TYPE_4__* %31, i32 %32, i32 %35)
  %37 = load %struct.ntb_msi_desc*, %struct.ntb_msi_desc** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ntb_msi_desc, %struct.ntb_msi_desc* %37, i64 %39
  %41 = getelementptr inbounds %struct.ntb_msi_desc, %struct.ntb_msi_desc* %40, i32 0, i32 1
  store i8* %36, i8** %41, align 8
  %42 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 2, %46
  %48 = add nsw i32 %47, 2
  %49 = call i8* @ntb_peer_spad_read(%struct.TYPE_4__* %44, i32 %45, i32 %48)
  %50 = load %struct.ntb_msi_desc*, %struct.ntb_msi_desc** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ntb_msi_desc, %struct.ntb_msi_desc* %50, i64 %52
  %54 = getelementptr inbounds %struct.ntb_msi_desc, %struct.ntb_msi_desc* %53, i32 0, i32 0
  store i8* %49, i8** %54, align 8
  br label %55

55:                                               ; preds = %28
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %24

58:                                               ; preds = %24
  %59 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @dev_info(i32* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load %struct.ntb_msit_ctx*, %struct.ntb_msit_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.ntb_msit_ctx, %struct.ntb_msit_ctx* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = call i32 @complete_all(i32* %72)
  ret void
}

declare dso_local i8* @ntb_peer_spad_read(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
