; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_add_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_add_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32, i32, i32, i32, i32 }

@iscsi_session_nr = common dso_local global i32 0, align 4
@ISCSI_MAX_TARGET = common dso_local global i32 0, align 4
@iscsi_sess_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failure in Target ID Allocation\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"session%u\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"could not register session's dev\0A\00", align 1
@sesslock = common dso_local global i32 0, align 4
@sesslist = common dso_local global i32 0, align 4
@ISCSI_KEVENT_CREATE_SESSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Completed session adding\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_add_session(%struct.iscsi_cls_session* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cls_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = call i32 @atomic_add_return(i32 1, i32* @iscsi_session_nr)
  %10 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ISCSI_MAX_TARGET, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @ida_simple_get(i32* @iscsi_sess_ida, i32 0, i32 0, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @KERN_ERR, align 4
  %22 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %23 = call i32 @iscsi_cls_session_printk(i32 %21, %struct.iscsi_cls_session* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %79

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %30 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  br label %35

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %34 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %37 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %36, i32 0, i32 3
  %38 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %39 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_set_name(i32* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %43 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %42, i32 0, i32 3
  %44 = call i32 @device_add(i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load i32, i32* @KERN_ERR, align 4
  %49 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %50 = call i32 @iscsi_cls_session_printk(i32 %48, %struct.iscsi_cls_session* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %67

51:                                               ; preds = %35
  %52 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %52, i32 0, i32 3
  %54 = call i32 @transport_register_device(i32* %53)
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_lock_irqsave(i32* @sesslock, i64 %55)
  %57 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %58 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %57, i32 0, i32 2
  %59 = call i32 @list_add(i32* %58, i32* @sesslist)
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* @sesslock, i64 %60)
  %62 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %63 = load i32, i32* @ISCSI_KEVENT_CREATE_SESSION, align 4
  %64 = call i32 @iscsi_session_event(%struct.iscsi_cls_session* %62, i32 %63)
  %65 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %66 = call i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %79

67:                                               ; preds = %47
  %68 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %69 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %74 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ida_simple_remove(i32* @iscsi_sess_ida, i32 %75)
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %51, %20
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @iscsi_cls_session_printk(i32, %struct.iscsi_cls_session*, i8*) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @transport_register_device(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iscsi_session_event(%struct.iscsi_cls_session*, i32) #1

declare dso_local i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session*, i8*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
