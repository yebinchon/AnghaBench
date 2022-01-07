; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_do_io_interruptible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_do_io_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32, i32, i32 }
%struct.tape_request = type { i32, i32*, i32* }

@__tape_wake_up_interruptible = common dso_local global i32* null, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"IO stopped on %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_do_io_interruptible(%struct.tape_device* %0, %struct.tape_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.tape_request*, align 8
  %6 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.tape_request* %1, %struct.tape_request** %5, align 8
  %7 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %8 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @get_ccwdev_lock(i32 %9)
  %11 = call i32 @spin_lock_irq(i32 %10)
  %12 = load i32*, i32** @__tape_wake_up_interruptible, align 8
  %13 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %14 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %16 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %15, i32 0, i32 1
  %17 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %18 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %20 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %21 = call i32 @__tape_start_request(%struct.tape_device* %19, %struct.tape_request* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %23 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_ccwdev_lock(i32 %24)
  %26 = call i32 @spin_unlock_irq(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %90

31:                                               ; preds = %2
  %32 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %33 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %36 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @wait_event_interruptible(i32 %34, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ERESTARTSYS, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %47 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %3, align 4
  br label %90

49:                                               ; preds = %31
  %50 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %51 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @get_ccwdev_lock(i32 %52)
  %54 = call i32 @spin_lock_irq(i32 %53)
  %55 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %56 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %57 = call i32 @__tape_cancel_io(%struct.tape_device* %55, %struct.tape_request* %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %59 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @get_ccwdev_lock(i32 %60)
  %62 = call i32 @spin_unlock_irq(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %76, %65
  %67 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %68 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %71 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @wait_event_interruptible(i32 %69, i32 %74)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @ERESTARTSYS, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %66, label %81

81:                                               ; preds = %76
  %82 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %83 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @ERESTARTSYS, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %81, %49
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %45, %29
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @__tape_start_request(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @__tape_cancel_io(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
