; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_bus_device_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_bus_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i64, i64, %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk*, %struct.target_control*, %struct.scsi_ctrl_blk* }
%struct.target_control = type { i32 }
%struct.scsi_ctrl_blk = type { i64, %struct.scsi_ctrl_blk*, i32 }

@MSG_OUT = common dso_local global i64 0, align 8
@TCF_SYNC_DONE = common dso_local global i32 0, align 4
@TCF_WDTR_DONE = common dso_local global i32 0, align 4
@TCF_BUSY = common dso_local global i32 0, align 4
@HOST_ABORTED = common dso_local global i32 0, align 4
@MSG_DEVRST = common dso_local global i32 0, align 4
@TUL_SFifo = common dso_local global i64 0, align 8
@TSC_XF_FIFO_OUT = common dso_local global i32 0, align 4
@TUL_SCmd = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @initio_bus_device_reset(%struct.initio_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  %5 = alloca %struct.target_control*, align 8
  %6 = alloca %struct.scsi_ctrl_blk*, align 8
  %7 = alloca %struct.scsi_ctrl_blk*, align 8
  %8 = alloca i64, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  %9 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %10 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %9, i32 0, i32 5
  %11 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %10, align 8
  store %struct.scsi_ctrl_blk* %11, %struct.scsi_ctrl_blk** %4, align 8
  %12 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %13 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %12, i32 0, i32 4
  %14 = load %struct.target_control*, %struct.target_control** %13, align 8
  store %struct.target_control* %14, %struct.target_control** %5, align 8
  %15 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %16 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MSG_OUT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %22 = call i32 @int_initio_bad_seq(%struct.initio_host* %21)
  store i32 %22, i32* %2, align 4
  br label %118

23:                                               ; preds = %1
  %24 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %25 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %26 = call i32 @initio_unlink_pend_scb(%struct.initio_host* %24, %struct.scsi_ctrl_blk* %25)
  %27 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %28 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %29 = call i32 @initio_release_scb(%struct.initio_host* %27, %struct.scsi_ctrl_blk* %28)
  %30 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* @TCF_SYNC_DONE, align 4
  %34 = load i32, i32* @TCF_WDTR_DONE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @TCF_BUSY, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load %struct.target_control*, %struct.target_control** %5, align 8
  %40 = getelementptr inbounds %struct.target_control, %struct.target_control* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %44 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %43, i32 0, i32 3
  %45 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %44, align 8
  store %struct.scsi_ctrl_blk* %45, %struct.scsi_ctrl_blk** %6, align 8
  store %struct.scsi_ctrl_blk* %45, %struct.scsi_ctrl_blk** %7, align 8
  br label %46

46:                                               ; preds = %97, %23
  %47 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  %48 = icmp ne %struct.scsi_ctrl_blk* %47, null
  br i1 %48, label %49, label %101

49:                                               ; preds = %46
  %50 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  %51 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %95

55:                                               ; preds = %49
  %56 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  %57 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %58 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %57, i32 0, i32 3
  %59 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %58, align 8
  %60 = icmp eq %struct.scsi_ctrl_blk* %56, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  %63 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %62, i32 0, i32 1
  %64 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %63, align 8
  %65 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %66 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %65, i32 0, i32 3
  store %struct.scsi_ctrl_blk* %64, %struct.scsi_ctrl_blk** %66, align 8
  %67 = icmp eq %struct.scsi_ctrl_blk* %64, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %70 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %69, i32 0, i32 2
  store %struct.scsi_ctrl_blk* null, %struct.scsi_ctrl_blk** %70, align 8
  br label %71

71:                                               ; preds = %68, %61
  br label %88

72:                                               ; preds = %55
  %73 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  %74 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %73, i32 0, i32 1
  %75 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %74, align 8
  %76 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %77 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %76, i32 0, i32 1
  store %struct.scsi_ctrl_blk* %75, %struct.scsi_ctrl_blk** %77, align 8
  %78 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  %79 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %80 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %79, i32 0, i32 2
  %81 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %80, align 8
  %82 = icmp eq %struct.scsi_ctrl_blk* %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %72
  %84 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %7, align 8
  %85 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %86 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %85, i32 0, i32 2
  store %struct.scsi_ctrl_blk* %84, %struct.scsi_ctrl_blk** %86, align 8
  br label %87

87:                                               ; preds = %83, %72
  br label %88

88:                                               ; preds = %87, %71
  %89 = load i32, i32* @HOST_ABORTED, align 4
  %90 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  %91 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %93 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  %94 = call i32 @initio_append_done_scb(%struct.initio_host* %92, %struct.scsi_ctrl_blk* %93)
  br label %97

95:                                               ; preds = %49
  %96 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  store %struct.scsi_ctrl_blk* %96, %struct.scsi_ctrl_blk** %7, align 8
  br label %97

97:                                               ; preds = %95, %88
  %98 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %6, align 8
  %99 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %98, i32 0, i32 1
  %100 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %99, align 8
  store %struct.scsi_ctrl_blk* %100, %struct.scsi_ctrl_blk** %6, align 8
  br label %46

101:                                              ; preds = %46
  %102 = load i32, i32* @MSG_DEVRST, align 4
  %103 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %104 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TUL_SFifo, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @outb(i32 %102, i64 %107)
  %109 = load i32, i32* @TSC_XF_FIFO_OUT, align 4
  %110 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %111 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TUL_SCmd, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @outb(i32 %109, i64 %114)
  %116 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %117 = call i32 @initio_wait_disc(%struct.initio_host* %116)
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %101, %20
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @int_initio_bad_seq(%struct.initio_host*) #1

declare dso_local i32 @initio_unlink_pend_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @initio_release_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @initio_append_done_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @initio_wait_disc(%struct.initio_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
