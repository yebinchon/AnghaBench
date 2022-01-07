; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.ep_data* }
%struct.ep_data = type { i64, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.file = type { %struct.ep_data* }

@EBUSY = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@STATE_DEV_UNBOUND = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@STATE_EP_DISABLED = common dso_local global i64 0, align 8
@STATE_EP_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ep_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ep_data*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.ep_data*, %struct.ep_data** %9, align 8
  store %struct.ep_data* %10, %struct.ep_data** %6, align 8
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %14 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %13, i32 0, i32 1
  %15 = call i64 @mutex_lock_interruptible(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINTR, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %80

20:                                               ; preds = %2
  %21 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %22 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %27 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @STATE_DEV_UNBOUND, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %70

36:                                               ; preds = %20
  %37 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %38 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @STATE_EP_DISABLED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  %43 = load i64, i64* @STATE_EP_READY, align 8
  %44 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %45 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %47 = call i32 @get_ep(%struct.ep_data* %46)
  %48 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %49 = load %struct.file*, %struct.file** %5, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  store %struct.ep_data* %48, %struct.ep_data** %50, align 8
  %51 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %52 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %55 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @VDEBUG(%struct.TYPE_3__* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %69

58:                                               ; preds = %36
  %59 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %60 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %63 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %66 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @DBG(%struct.TYPE_3__* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %64, i64 %67)
  br label %69

69:                                               ; preds = %58, %42
  br label %70

70:                                               ; preds = %69, %33
  %71 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %72 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = call i32 @spin_unlock_irq(i32* %74)
  %76 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %77 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %70, %17
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @get_ep(%struct.ep_data*) #1

declare dso_local i32 @VDEBUG(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @DBG(%struct.TYPE_3__*, i8*, i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
