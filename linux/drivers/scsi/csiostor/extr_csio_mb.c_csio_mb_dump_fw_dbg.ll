; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_dump_fw_dbg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_dump_fw_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.fw_debug_cmd = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"FW print message:\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\09debug->dprtstridx = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\09debug->dprtstrparam0 = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\09debug->dprtstrparam1 = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\09debug->dprtstrparam2 = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\09debug->dprtstrparam3 = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"FW assertion at %.16s:%u, val0 %#x, val1 %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, i32*)* @csio_mb_dump_fw_dbg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_mb_dump_fw_dbg(%struct.csio_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fw_debug_cmd*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.fw_debug_cmd*
  store %struct.fw_debug_cmd* %7, %struct.fw_debug_cmd** %5, align 8
  %8 = load %struct.fw_debug_cmd*, %struct.fw_debug_cmd** %5, align 8
  %9 = getelementptr inbounds %struct.fw_debug_cmd, %struct.fw_debug_cmd* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ntohl(i32 %10)
  %12 = call i32 @FW_DEBUG_CMD_TYPE_G(i32 %11)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %57

14:                                               ; preds = %2
  %15 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %16 = call i32 (%struct.csio_hw*, i8*, ...) @csio_info(%struct.csio_hw* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %18 = load %struct.fw_debug_cmd*, %struct.fw_debug_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.fw_debug_cmd, %struct.fw_debug_cmd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohs(i32 %22)
  %24 = call i32 (%struct.csio_hw*, i8*, ...) @csio_info(%struct.csio_hw* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %26 = load %struct.fw_debug_cmd*, %struct.fw_debug_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.fw_debug_cmd, %struct.fw_debug_cmd* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ntohl(i32 %30)
  %32 = call i32 (%struct.csio_hw*, i8*, ...) @csio_info(%struct.csio_hw* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %34 = load %struct.fw_debug_cmd*, %struct.fw_debug_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.fw_debug_cmd, %struct.fw_debug_cmd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ntohl(i32 %38)
  %40 = call i32 (%struct.csio_hw*, i8*, ...) @csio_info(%struct.csio_hw* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %42 = load %struct.fw_debug_cmd*, %struct.fw_debug_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.fw_debug_cmd, %struct.fw_debug_cmd* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohl(i32 %46)
  %48 = call i32 (%struct.csio_hw*, i8*, ...) @csio_info(%struct.csio_hw* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %50 = load %struct.fw_debug_cmd*, %struct.fw_debug_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.fw_debug_cmd, %struct.fw_debug_cmd* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohl(i32 %54)
  %56 = call i32 (%struct.csio_hw*, i8*, ...) @csio_info(%struct.csio_hw* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  br label %83

57:                                               ; preds = %2
  %58 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %59 = load %struct.fw_debug_cmd*, %struct.fw_debug_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.fw_debug_cmd, %struct.fw_debug_cmd* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.fw_debug_cmd*, %struct.fw_debug_cmd** %5, align 8
  %65 = getelementptr inbounds %struct.fw_debug_cmd, %struct.fw_debug_cmd* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ntohl(i32 %68)
  %70 = load %struct.fw_debug_cmd*, %struct.fw_debug_cmd** %5, align 8
  %71 = getelementptr inbounds %struct.fw_debug_cmd, %struct.fw_debug_cmd* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ntohl(i32 %74)
  %76 = load %struct.fw_debug_cmd*, %struct.fw_debug_cmd** %5, align 8
  %77 = getelementptr inbounds %struct.fw_debug_cmd, %struct.fw_debug_cmd* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ntohl(i32 %80)
  %82 = call i32 @csio_fatal(%struct.csio_hw* %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %63, i32 %69, i32 %75, i32 %81)
  br label %83

83:                                               ; preds = %57, %14
  ret void
}

declare dso_local i32 @FW_DEBUG_CMD_TYPE_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @csio_info(%struct.csio_hw*, i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @csio_fatal(%struct.csio_hw*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
