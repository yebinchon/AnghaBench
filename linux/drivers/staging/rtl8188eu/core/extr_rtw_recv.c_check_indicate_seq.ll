; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_check_indicate_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_check_indicate_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_reorder_ctrl = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.recv_reorder_ctrl*, i32)* @check_indicate_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_indicate_seq(%struct.recv_reorder_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.recv_reorder_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.recv_reorder_ctrl* %0, %struct.recv_reorder_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %4, align 8
  %9 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %4, align 8
  %12 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %16, 4095
  store i32 %17, i32* %7, align 4
  %18 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %4, align 8
  %19 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 65535
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %4, align 8
  %25 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %4, align 8
  %29 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @SN_LESS(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %78

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %4, align 8
  %37 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @SN_EQUAL(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %4, align 8
  %43 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  %46 = and i32 %45, 4095
  %47 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %4, align 8
  %48 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %77

49:                                               ; preds = %34
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @SN_LESS(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp sge i32 %55, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %4, align 8
  %65 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %75

66:                                               ; preds = %54
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  %70 = sub nsw i32 %67, %69
  %71 = sub nsw i32 4095, %70
  %72 = add nsw i32 %71, 1
  %73 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %4, align 8
  %74 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %66, %59
  br label %76

76:                                               ; preds = %75, %49
  br label %77

77:                                               ; preds = %76, %41
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %33
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @SN_LESS(i32, i32) #1

declare dso_local i64 @SN_EQUAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
