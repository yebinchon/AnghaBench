; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_gadgetfs_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_gadgetfs_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_data = type { i32, i32, %struct.TYPE_3__*, %struct.usb_gadget* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.usb_gadget = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dev_data* }
%struct.usb_gadget_driver = type { i32 }

@the_device = common dso_local global %struct.dev_data* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@CHIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s expected %s controller not %s\0A\00", align 1
@shortname = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@epio_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"bound to %s driver\0A\00", align 1
@STATE_DEV_UNCONNECTED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @gadgetfs_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gadgetfs_bind(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca %struct.dev_data*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %7 = load %struct.dev_data*, %struct.dev_data** @the_device, align 8
  store %struct.dev_data* %7, %struct.dev_data** %6, align 8
  %8 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %9 = icmp ne %struct.dev_data* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ESRCH, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %89

13:                                               ; preds = %2
  %14 = load i32, i32* @CHIP, align 4
  %15 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %16 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @strcmp(i32 %14, i32 %17)
  %19 = icmp ne i64 0, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load i32, i32* @shortname, align 4
  %22 = load i32, i32* @CHIP, align 4
  %23 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %24 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %89

29:                                               ; preds = %13
  %30 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %31 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %32 = call i32 @set_gadget_data(%struct.usb_gadget* %30, %struct.dev_data* %31)
  %33 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %34 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %35 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %34, i32 0, i32 3
  store %struct.usb_gadget* %33, %struct.usb_gadget** %35, align 8
  %36 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %37 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %38 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.dev_data* %36, %struct.dev_data** %40, align 8
  %41 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %42 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.TYPE_3__* @usb_ep_alloc_request(%struct.TYPE_4__* %43, i32 %44)
  %46 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %47 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %46, i32 0, i32 2
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %47, align 8
  %48 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %49 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = icmp ne %struct.TYPE_3__* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %29
  br label %84

53:                                               ; preds = %29
  %54 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %55 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* @epio_complete, align 4
  %59 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %60 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 8
  %63 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %64 = call i64 @activate_ep_files(%struct.dev_data* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %84

67:                                               ; preds = %53
  %68 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %69 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %70 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @INFO(%struct.dev_data* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %74 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %73, i32 0, i32 0
  %75 = call i32 @spin_lock_irq(i32* %74)
  %76 = load i32, i32* @STATE_DEV_UNCONNECTED, align 4
  %77 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %78 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %80 = getelementptr inbounds %struct.dev_data, %struct.dev_data* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_irq(i32* %80)
  %82 = load %struct.dev_data*, %struct.dev_data** %6, align 8
  %83 = call i32 @get_dev(%struct.dev_data* %82)
  store i32 0, i32* %3, align 4
  br label %89

84:                                               ; preds = %66, %52
  %85 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %86 = call i32 @gadgetfs_unbind(%struct.usb_gadget* %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %67, %20, %10
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @set_gadget_data(%struct.usb_gadget*, %struct.dev_data*) #1

declare dso_local %struct.TYPE_3__* @usb_ep_alloc_request(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @activate_ep_files(%struct.dev_data*) #1

declare dso_local i32 @INFO(%struct.dev_data*, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @get_dev(%struct.dev_data*) #1

declare dso_local i32 @gadgetfs_unbind(%struct.usb_gadget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
