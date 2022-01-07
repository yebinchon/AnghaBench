; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_fwevt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_fwevt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.fw_port_cmd = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@FW_PORT_CMD = common dso_local global i64 0, align 8
@FW_PORT_ACTION_GET_PORT_INFO = common dso_local global i64 0, align 8
@FW_PORT_ACTION_GET_PORT_INFO32 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Unhandled FW_PORT_CMD action: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Port:%x - LINK %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@FW_DEBUG_CMD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"Gen MB can't handle op:0x%x on evtq.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_mb_fwevt_handler(%struct.csio_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fw_port_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to i64*
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @FW_PORT_CMD, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %134

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = bitcast i32* %20 to %struct.fw_port_cmd*
  store %struct.fw_port_cmd* %21, %struct.fw_port_cmd** %7, align 8
  %22 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @ntohl(i32 %24)
  %26 = call i64 @FW_PORT_CMD_PORTID_G(i8* %25)
  store i64 %26, i64* %8, align 8
  %27 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @ntohl(i32 %29)
  %31 = call i64 @FW_PORT_CMD_ACTION_G(i8* %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @FW_PORT_ACTION_GET_PORT_INFO, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %19
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @FW_PORT_ACTION_GET_PORT_INFO32, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @csio_err(%struct.csio_hw* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %150

45:                                               ; preds = %35, %19
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @FW_PORT_ACTION_GET_PORT_INFO, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @ntohl(i32 %54)
  store i8* %55, i8** %9, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i64 @FW_PORT_CMD_MODTYPE_G(i8* %56)
  store i64 %57, i64* %11, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i8* @lstatus_to_fwcap(i8* %58)
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i64 @FW_PORT_CMD_LSTATUS_G(i8* %60)
  %62 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %63 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i64 %61, i64* %67, align 8
  br label %91

68:                                               ; preds = %45
  %69 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @ntohl(i32 %73)
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i64 @FW_PORT_CMD_MODTYPE32_G(i8* %75)
  store i64 %76, i64* %11, align 8
  %77 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %7, align 8
  %78 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @ntohl(i32 %81)
  store i8* %82, i8** %12, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i64 @FW_PORT_CMD_LSTATUS32_G(i8* %83)
  %85 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %86 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i64 %84, i64* %90, align 8
  br label %91

91:                                               ; preds = %68, %49
  %92 = load i8*, i8** %12, align 8
  %93 = call i32 @fwcap_to_fwspeed(i8* %92)
  %94 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %95 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  store i32 %93, i32* %99, align 8
  %100 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %103 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %112 = call i32 @csio_info(%struct.csio_hw* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %101, i8* %111)
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %115 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i64, i64* %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %113, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %91
  %123 = load i64, i64* %11, align 8
  %124 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %125 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %124, i32 0, i32 0
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i64 %123, i64* %129, align 8
  %130 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @csio_mb_portmod_changed(%struct.csio_hw* %130, i64 %131)
  br label %133

133:                                              ; preds = %122, %91
  br label %149

134:                                              ; preds = %2
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* @FW_DEBUG_CMD, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @csio_mb_dump_fw_dbg(%struct.csio_hw* %139, i32* %140)
  br label %148

142:                                              ; preds = %134
  %143 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %144 = load i64, i64* %6, align 8
  %145 = call i32 @csio_dbg(%struct.csio_hw* %143, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %150

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %133
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %142, %39
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i64 @FW_PORT_CMD_PORTID_G(i8*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i64 @FW_PORT_CMD_ACTION_G(i8*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, i64) #1

declare dso_local i64 @FW_PORT_CMD_MODTYPE_G(i8*) #1

declare dso_local i8* @lstatus_to_fwcap(i8*) #1

declare dso_local i64 @FW_PORT_CMD_LSTATUS_G(i8*) #1

declare dso_local i64 @FW_PORT_CMD_MODTYPE32_G(i8*) #1

declare dso_local i64 @FW_PORT_CMD_LSTATUS32_G(i8*) #1

declare dso_local i32 @fwcap_to_fwspeed(i8*) #1

declare dso_local i32 @csio_info(%struct.csio_hw*, i8*, i64, i8*) #1

declare dso_local i32 @csio_mb_portmod_changed(%struct.csio_hw*, i64) #1

declare dso_local i32 @csio_mb_dump_fw_dbg(%struct.csio_hw*, i32*) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
