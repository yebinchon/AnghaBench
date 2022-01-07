; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_comms.c_xb_init_comms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_comms.c_xb_init_comms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenstore_domain_interface = type { i64, i64, i64, i64 }

@xen_store_interface = common dso_local global %struct.xenstore_domain_interface* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"request ring is not quiescent (%08x:%08x)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"response ring is not quiescent (%08x:%08x): fixing up\0A\00", align 1
@reset_devices = common dso_local global i32 0, align 4
@xenbus_irq = common dso_local global i32 0, align 4
@xen_store_evtchn = common dso_local global i32 0, align 4
@wake_waiting = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"xenbus\00", align 1
@xb_waitq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"request irq failed %i\0A\00", align 1
@xenbus_task = common dso_local global i64 0, align 8
@xenbus_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xb_init_comms() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xenstore_domain_interface*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** @xen_store_interface, align 8
  store %struct.xenstore_domain_interface* %4, %struct.xenstore_domain_interface** %2, align 8
  %5 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %2, align 8
  %6 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %2, align 8
  %9 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %0
  %13 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %2, align 8
  %14 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %2, align 8
  %18 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %19)
  br label %21

21:                                               ; preds = %12, %0
  %22 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %2, align 8
  %23 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %2, align 8
  %26 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  %30 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %2, align 8
  %31 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %2, align 8
  %34 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @pr_warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %32, i64 %35)
  %37 = load i32, i32* @reset_devices, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %2, align 8
  %41 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.xenstore_domain_interface*, %struct.xenstore_domain_interface** %2, align 8
  %44 = getelementptr inbounds %struct.xenstore_domain_interface, %struct.xenstore_domain_interface* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %29
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i32, i32* @xenbus_irq, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @xen_store_evtchn, align 4
  %51 = load i32, i32* @xenbus_irq, align 4
  %52 = call i32 @rebind_evtchn_irq(i32 %50, i32 %51)
  br label %78

53:                                               ; preds = %46
  %54 = load i32, i32* @xen_store_evtchn, align 4
  %55 = load i32, i32* @wake_waiting, align 4
  %56 = call i32 @bind_evtchn_to_irqhandler(i32 %54, i32 %55, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* @xb_waitq)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* %3, align 4
  %61 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %3, align 4
  store i32 %62, i32* %1, align 4
  br label %79

63:                                               ; preds = %53
  %64 = load i32, i32* %3, align 4
  store i32 %64, i32* @xenbus_irq, align 4
  %65 = load i64, i64* @xenbus_task, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @xenbus_thread, align 4
  %69 = call i64 @kthread_run(i32 %68, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i64 %69, i64* @xenbus_task, align 8
  %70 = load i64, i64* @xenbus_task, align 8
  %71 = call i64 @IS_ERR(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i64, i64* @xenbus_task, align 8
  %75 = call i32 @PTR_ERR(i64 %74)
  store i32 %75, i32* %1, align 4
  br label %79

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %63
  br label %78

78:                                               ; preds = %77, %49
  store i32 0, i32* %1, align 4
  br label %79

79:                                               ; preds = %78, %73, %59
  %80 = load i32, i32* %1, align 4
  ret i32 %80
}

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @pr_warn(i8*, i64, i64) #1

declare dso_local i32 @rebind_evtchn_irq(i32, i32) #1

declare dso_local i32 @bind_evtchn_to_irqhandler(i32, i32, i32, i8*, i32*) #1

declare dso_local i64 @kthread_run(i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
