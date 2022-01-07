; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_dc395x_eh_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_dc395x_eh_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.AdapterCtlBlk = type { i32 }
%struct.DeviceCtlBlk = type { i32, i32 }
%struct.ScsiReqBlk = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"eh_abort: (0x%p) target=<%02i-%i> cmd=%p\0A\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"eh_abort: No such device\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"eh_abort: Command was waiting\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"eh_abort: Command in progress\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"eh_abort: Command not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @dc395x_eh_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc395x_eh_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.AdapterCtlBlk*, align 8
  %5 = alloca %struct.DeviceCtlBlk*, align 8
  %6 = alloca %struct.ScsiReqBlk*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.AdapterCtlBlk*
  store %struct.AdapterCtlBlk* %14, %struct.AdapterCtlBlk** %4, align 8
  %15 = load i32, i32* @KERN_INFO, align 4
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %29 = call i32 (i32, i8*, ...) @dprintkl(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %16, i32 %21, i32 %27, %struct.scsi_cmnd* %28)
  %30 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call %struct.DeviceCtlBlk* @find_dcb(%struct.AdapterCtlBlk* %30, i32 %35, i64 %40)
  store %struct.DeviceCtlBlk* %41, %struct.DeviceCtlBlk** %5, align 8
  %42 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %43 = icmp ne %struct.DeviceCtlBlk* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %1
  %45 = load i32, i32* @KERN_DEBUG, align 4
  %46 = call i32 (i32, i8*, ...) @dprintkl(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @FAILED, align 4
  store i32 %47, i32* %2, align 4
  br label %95

48:                                               ; preds = %1
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %50 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %51 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %50, i32 0, i32 1
  %52 = call %struct.ScsiReqBlk* @find_cmd(%struct.scsi_cmnd* %49, i32* %51)
  store %struct.ScsiReqBlk* %52, %struct.ScsiReqBlk** %6, align 8
  %53 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %54 = icmp ne %struct.ScsiReqBlk* %53, null
  br i1 %54, label %55, label %80

55:                                               ; preds = %48
  %56 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %57 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %56, i32 0, i32 0
  %58 = call i32 @list_del(i32* %57)
  %59 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %60 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %61 = call i32 @pci_unmap_srb_sense(%struct.AdapterCtlBlk* %59, %struct.ScsiReqBlk* %60)
  %62 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %63 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %64 = call i32 @pci_unmap_srb(%struct.AdapterCtlBlk* %62, %struct.ScsiReqBlk* %63)
  %65 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %66 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %67 = call i32 @free_tag(%struct.DeviceCtlBlk* %65, %struct.ScsiReqBlk* %66)
  %68 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %69 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %68, i32 0, i32 0
  %70 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %71 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %70, i32 0, i32 0
  %72 = call i32 @list_add_tail(i32* %69, i32* %71)
  %73 = load i32, i32* @KERN_DEBUG, align 4
  %74 = call i32 (i32, i8*, ...) @dprintkl(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @DID_ABORT, align 4
  %76 = shl i32 %75, 16
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @SUCCESS, align 4
  store i32 %79, i32* %2, align 4
  br label %95

80:                                               ; preds = %48
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %82 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %83 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %82, i32 0, i32 0
  %84 = call %struct.ScsiReqBlk* @find_cmd(%struct.scsi_cmnd* %81, i32* %83)
  store %struct.ScsiReqBlk* %84, %struct.ScsiReqBlk** %6, align 8
  %85 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %86 = icmp ne %struct.ScsiReqBlk* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @KERN_DEBUG, align 4
  %89 = call i32 (i32, i8*, ...) @dprintkl(i32 %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %93

90:                                               ; preds = %80
  %91 = load i32, i32* @KERN_DEBUG, align 4
  %92 = call i32 (i32, i8*, ...) @dprintkl(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* @FAILED, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %55, %44
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @dprintkl(i32, i8*, ...) #1

declare dso_local %struct.DeviceCtlBlk* @find_dcb(%struct.AdapterCtlBlk*, i32, i64) #1

declare dso_local %struct.ScsiReqBlk* @find_cmd(%struct.scsi_cmnd*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @pci_unmap_srb_sense(%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i32 @pci_unmap_srb(%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i32 @free_tag(%struct.DeviceCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
