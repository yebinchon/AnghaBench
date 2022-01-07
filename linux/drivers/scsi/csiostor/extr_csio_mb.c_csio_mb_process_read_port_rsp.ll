; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_process_read_port_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_process_read_port_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i64 }
%struct.fw_port_cmd = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@FW_SUCCESS = common dso_local global i32 0, align 4
@FW_CAPS16 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_mb_process_read_port_rsp(%struct.csio_hw* %0, %struct.csio_mb* %1, i32* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.csio_hw*, align 8
  %8 = alloca %struct.csio_mb*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.fw_port_cmd*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %7, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %15 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.fw_port_cmd*
  store %struct.fw_port_cmd* %17, %struct.fw_port_cmd** %13, align 8
  %18 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %13, align 8
  %19 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 %20)
  %22 = call i32 @FW_CMD_RETVAL_G(i32 %21)
  %23 = load i32*, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FW_SUCCESS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %6
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @FW_CAPS16, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %13, align 8
  %34 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohs(i32 %37)
  %39 = call i32 @fwcaps16_to_caps32(i32 %38)
  %40 = load i32*, i32** %11, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %13, align 8
  %42 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohs(i32 %45)
  %47 = call i32 @fwcaps16_to_caps32(i32 %46)
  %48 = load i32*, i32** %12, align 8
  store i32 %47, i32* %48, align 4
  br label %64

49:                                               ; preds = %28
  %50 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %13, align 8
  %51 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be32_to_cpu(i32 %54)
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %13, align 8
  %58 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @be32_to_cpu(i32 %61)
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %49, %32
  br label %65

65:                                               ; preds = %64, %6
  ret void
}

declare dso_local i32 @FW_CMD_RETVAL_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @fwcaps16_to_caps32(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
