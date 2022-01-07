; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_wka_port_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_wka_port_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fc_wka_port = type { i64, i32, i32, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@ZFCP_FC_WKA_PORT_OFFLINE = common dso_local global i64 0, align 8
@ZFCP_FC_WKA_PORT_CLOSING = common dso_local global i64 0, align 8
@ZFCP_FC_WKA_PORT_OPENING = common dso_local global i64 0, align 8
@ZFCP_FC_WKA_PORT_ONLINE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_fc_wka_port*)* @zfcp_fc_wka_port_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fc_wka_port_get(%struct.zfcp_fc_wka_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_fc_wka_port*, align 8
  store %struct.zfcp_fc_wka_port* %0, %struct.zfcp_fc_wka_port** %3, align 8
  %4 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %5 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %4, i32 0, i32 3
  %6 = call i64 @mutex_lock_interruptible(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @ERESTARTSYS, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %69

11:                                               ; preds = %1
  %12 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %13 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZFCP_FC_WKA_PORT_OFFLINE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %19 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ZFCP_FC_WKA_PORT_CLOSING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %17, %11
  %24 = load i64, i64* @ZFCP_FC_WKA_PORT_OPENING, align 8
  %25 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %26 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %28 = call i64 @zfcp_fsf_open_wka_port(%struct.zfcp_fc_wka_port* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i64, i64* @ZFCP_FC_WKA_PORT_OFFLINE, align 8
  %32 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %33 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %23
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %37 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %36, i32 0, i32 3
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %40 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %43 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ZFCP_FC_WKA_PORT_ONLINE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %35
  %48 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %49 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ZFCP_FC_WKA_PORT_OFFLINE, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %47, %35
  %54 = phi i1 [ true, %35 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @wait_event(i32 %41, i32 %55)
  %57 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %58 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ZFCP_FC_WKA_PORT_ONLINE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load %struct.zfcp_fc_wka_port*, %struct.zfcp_fc_wka_port** %3, align 8
  %64 = getelementptr inbounds %struct.zfcp_fc_wka_port, %struct.zfcp_fc_wka_port* %63, i32 0, i32 1
  %65 = call i32 @atomic_inc(i32* %64)
  store i32 0, i32* %2, align 4
  br label %69

66:                                               ; preds = %53
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %66, %62, %8
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @zfcp_fsf_open_wka_port(%struct.zfcp_fc_wka_port*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
