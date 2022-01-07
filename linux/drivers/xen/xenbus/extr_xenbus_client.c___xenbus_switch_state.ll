; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_client.c___xenbus_switch_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_client.c___xenbus_switch_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32 }
%struct.xenbus_transaction = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"starting transaction\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"writing new state\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"ending transaction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, i32, i32)* @__xenbus_switch_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xenbus_switch_state(%struct.xenbus_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenbus_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xenbus_transaction, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %14 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %69, %18
  store i32 1, i32* %11, align 4
  %20 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %8)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @xenbus_switch_fatal(%struct.xenbus_device* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %80

28:                                               ; preds = %19
  %29 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %30 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xenbus_scanf(i32 %33, i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %54

38:                                               ; preds = %28
  %39 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %40 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @xenbus_printf(i32 %44, i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @xenbus_switch_fatal(%struct.xenbus_device* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %54

53:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %53, %48, %37
  %55 = load i32, i32* %11, align 4
  %56 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @xenbus_transaction_end(i32 %57, i32 %55)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  br label %19

70:                                               ; preds = %66, %61
  %71 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @xenbus_switch_fatal(%struct.xenbus_device* %71, i32 %72, i32 %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %79

75:                                               ; preds = %54
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %78 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %70
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %23, %17
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #1

declare dso_local i32 @xenbus_switch_fatal(%struct.xenbus_device*, i32, i32, i8*) #1

declare dso_local i32 @xenbus_scanf(i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @xenbus_printf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
