; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/common/extr_usb-otg-fsm.c_otg_set_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/common/extr_usb-otg-fsm.c_otg_set_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otg_fsm = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Changing role fsm->protocol= %d; new protocol= %d\0A\00", align 1
@PROTO_HOST = common dso_local global i32 0, align 4
@PROTO_GADGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.otg_fsm*, i32)* @otg_set_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otg_set_protocol(%struct.otg_fsm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.otg_fsm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.otg_fsm* %0, %struct.otg_fsm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %8 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %65

12:                                               ; preds = %2
  %13 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %14 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @VDBG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %19 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PROTO_HOST, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %25 = call i32 @otg_start_host(%struct.otg_fsm* %24, i32 0)
  store i32 %25, i32* %6, align 4
  br label %36

26:                                               ; preds = %12
  %27 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %28 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PROTO_GADGET, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %34 = call i32 @otg_start_gadget(%struct.otg_fsm* %33, i32 0)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %26
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %66

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @PROTO_HOST, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %47 = call i32 @otg_start_host(%struct.otg_fsm* %46, i32 1)
  store i32 %47, i32* %6, align 4
  br label %56

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @PROTO_GADGET, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %54 = call i32 @otg_start_gadget(%struct.otg_fsm* %53, i32 1)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %45
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %66

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.otg_fsm*, %struct.otg_fsm** %4, align 8
  %64 = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %66

65:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %61, %59, %39
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @VDBG(i8*, i32, i32) #1

declare dso_local i32 @otg_start_host(%struct.otg_fsm*, i32) #1

declare dso_local i32 @otg_start_gadget(%struct.otg_fsm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
