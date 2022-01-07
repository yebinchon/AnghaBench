; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_messaging.c_slim_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_messaging.c_slim_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slim_msg_txn = type { i32, i64, i32, i32 }
%struct.slim_device = type { %struct.slim_controller*, i32 }
%struct.slim_controller = type { i32 }
%struct.slim_val_inf = type { i32, i32 }

@txn_stack = common dso_local global %struct.slim_msg_txn zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"SB xfer msg:os:%x, len:%d, MC:%x, sl:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slim_xfer_msg(%struct.slim_device* %0, %struct.slim_val_inf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.slim_device*, align 8
  %6 = alloca %struct.slim_val_inf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.slim_msg_txn*, align 8
  %9 = alloca %struct.slim_controller*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.slim_device* %0, %struct.slim_device** %5, align 8
  store %struct.slim_val_inf* %1, %struct.slim_val_inf** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %14 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %17 = call i32 @DEFINE_SLIM_LDEST_TXN(%struct.slim_msg_txn* byval(%struct.slim_msg_txn) align 8 @txn_stack, i32 %12, i32 6, i32 %15, %struct.slim_val_inf* %16)
  store %struct.slim_msg_txn* @txn_stack, %struct.slim_msg_txn** %8, align 8
  %18 = load %struct.slim_device*, %struct.slim_device** %5, align 8
  %19 = getelementptr inbounds %struct.slim_device, %struct.slim_device* %18, i32 0, i32 0
  %20 = load %struct.slim_controller*, %struct.slim_controller** %19, align 8
  store %struct.slim_controller* %20, %struct.slim_controller** %9, align 8
  %21 = load %struct.slim_controller*, %struct.slim_controller** %9, align 8
  %22 = icmp ne %struct.slim_controller* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %91

26:                                               ; preds = %3
  %27 = load %struct.slim_controller*, %struct.slim_controller** %9, align 8
  %28 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @slim_val_inf_sanity(%struct.slim_controller* %27, %struct.slim_val_inf* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %91

35:                                               ; preds = %26
  %36 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %37 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @slim_slicesize(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.slim_controller*, %struct.slim_controller** %9, align 8
  %41 = getelementptr inbounds %struct.slim_controller, %struct.slim_controller* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %44 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %47 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, 8
  %54 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %55 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 4095
  %58 = shl i32 %57, 4
  %59 = or i32 %53, %58
  %60 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %8, align 8
  %61 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %7, align 4
  switch i32 %62, label %72 [
    i32 129, label %63
    i32 131, label %63
    i32 128, label %63
    i32 130, label %63
  ]

63:                                               ; preds = %35, %35, %35, %35
  %64 = load %struct.slim_val_inf*, %struct.slim_val_inf** %6, align 8
  %65 = getelementptr inbounds %struct.slim_val_inf, %struct.slim_val_inf* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %8, align 8
  %69 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %35, %63
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %8, align 8
  %75 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %8, align 8
  %78 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @slim_tid_txn(i32 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %8, align 8
  %84 = getelementptr inbounds %struct.slim_msg_txn, %struct.slim_msg_txn* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %82, %73
  %88 = load %struct.slim_controller*, %struct.slim_controller** %9, align 8
  %89 = load %struct.slim_msg_txn*, %struct.slim_msg_txn** %8, align 8
  %90 = call i32 @slim_do_transfer(%struct.slim_controller* %88, %struct.slim_msg_txn* %89)
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %33, %23
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @DEFINE_SLIM_LDEST_TXN(%struct.slim_msg_txn* byval(%struct.slim_msg_txn) align 8, i32, i32, i32, %struct.slim_val_inf*) #1

declare dso_local i32 @slim_val_inf_sanity(%struct.slim_controller*, %struct.slim_val_inf*, i32) #1

declare dso_local i32 @slim_slicesize(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @slim_tid_txn(i32, i32) #1

declare dso_local i32 @slim_do_transfer(%struct.slim_controller*, %struct.slim_msg_txn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
