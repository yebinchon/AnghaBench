; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_scan_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/idt/extr_ntb_hw_idt.c_idt_scan_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.idt_ntb_dev = type { i64, i64*, i64*, i64, %struct.TYPE_10__, %struct.TYPE_8__*, %struct.TYPE_7__*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8, i8 }
%struct.TYPE_7__ = type { i8, i8* }

@IDT_NT_PCIELCAP = common dso_local global i32 0, align 4
@PCIELCAP_PORTNUM = common dso_local global i32 0, align 4
@portdata_tbl = common dso_local global %struct.TYPE_11__* null, align 8
@SWPORTxSTS_SWPART = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@partdata_tbl = common dso_local global %struct.TYPE_12__* null, align 8
@SWPARTxSTS_STATE = common dso_local global i32 0, align 4
@ACT = common dso_local global i32 0, align 4
@SWPORTxSTS_MODE = common dso_local global i32 0, align 4
@NT = common dso_local global i32 0, align 4
@USNT = common dso_local global i32 0, align 4
@USNTDMA = common dso_local global i32 0, align 4
@NTDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Local port: %hhu, num of peers: %hhu\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"No active peer found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt_ntb_dev*)* @idt_scan_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt_scan_ports(%struct.idt_ntb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idt_ntb_dev*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.idt_ntb_dev* %0, %struct.idt_ntb_dev** %3, align 8
  %10 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %11 = load i32, i32* @IDT_NT_PCIELCAP, align 4
  %12 = call i32 @idt_nt_read(%struct.idt_ntb_dev* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @PCIELCAP_PORTNUM, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i8* @GET_FIELD(i32 %13, i32 %14)
  %16 = ptrtoint i8* %15 to i64
  %17 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %18 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** @portdata_tbl, align 8
  %21 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %22 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %19, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @SWPORTxSTS_SWPART, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @GET_FIELD(i32 %28, i32 %29)
  %31 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %32 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %34 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @memset(i64* %35, i32 %37, i32 8)
  %39 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %40 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32 @memset(i64* %41, i32 %43, i32 8)
  %45 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %46 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  store i8 0, i8* %4, align 1
  br label %47

47:                                               ; preds = %166, %1
  %48 = load i8, i8* %4, align 1
  %49 = zext i8 %48 to i32
  %50 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %51 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %50, i32 0, i32 6
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 8
  %55 = zext i8 %54 to i32
  %56 = icmp slt i32 %49, %55
  br i1 %56, label %57, label %169

57:                                               ; preds = %47
  %58 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %59 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %58, i32 0, i32 6
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8, i8* %4, align 1
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* %5, align 1
  %67 = load i8, i8* %5, align 1
  %68 = zext i8 %67 to i64
  %69 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %70 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %166

74:                                               ; preds = %57
  %75 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** @portdata_tbl, align 8
  %77 = load i8, i8* %5, align 1
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %75, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* @SWPORTxSTS_SWPART, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i8* @GET_FIELD(i32 %83, i32 %84)
  %86 = ptrtoint i8* %85 to i8
  store i8 %86, i8* %6, align 1
  %87 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @partdata_tbl, align 8
  %89 = load i8, i8* %6, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @idt_sw_read(%struct.idt_ntb_dev* %87, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* @SWPARTxSTS_STATE, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @ACT, align 4
  %98 = call i64 @IS_FLD_SET(i32 %95, i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %165

100:                                              ; preds = %74
  %101 = load i32, i32* @SWPORTxSTS_MODE, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @NT, align 4
  %104 = call i64 @IS_FLD_SET(i32 %101, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %124, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* @SWPORTxSTS_MODE, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @USNT, align 4
  %110 = call i64 @IS_FLD_SET(i32 %107, i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* @SWPORTxSTS_MODE, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @USNTDMA, align 4
  %116 = call i64 @IS_FLD_SET(i32 %113, i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load i32, i32* @SWPORTxSTS_MODE, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @NTDMA, align 4
  %122 = call i64 @IS_FLD_SET(i32 %119, i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %165

124:                                              ; preds = %118, %112, %106, %100
  %125 = load i8, i8* %5, align 1
  %126 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %127 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %126, i32 0, i32 5
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %130 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  store i8 %125, i8* %133, align 1
  %134 = load i8, i8* %6, align 1
  %135 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %136 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %135, i32 0, i32 5
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %139 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  store i8 %134, i8* %142, align 1
  %143 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %144 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %147 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = load i8, i8* %5, align 1
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  store i64 %145, i64* %151, align 8
  %152 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %153 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %156 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %155, i32 0, i32 2
  %157 = load i64*, i64** %156, align 8
  %158 = load i8, i8* %6, align 1
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  store i64 %154, i64* %160, align 8
  %161 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %162 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %162, align 8
  br label %165

165:                                              ; preds = %124, %118, %74
  br label %166

166:                                              ; preds = %165, %73
  %167 = load i8, i8* %4, align 1
  %168 = add i8 %167, 1
  store i8 %168, i8* %4, align 1
  br label %47

169:                                              ; preds = %47
  %170 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %171 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %176 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i8
  %179 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %180 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @dev_dbg(i32* %174, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8 zeroext %178, i64 %181)
  %183 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %184 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %169
  %188 = load %struct.idt_ntb_dev*, %struct.idt_ntb_dev** %3, align 8
  %189 = getelementptr inbounds %struct.idt_ntb_dev, %struct.idt_ntb_dev* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = call i32 @dev_warn(i32* %192, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %194 = load i32, i32* @ENODEV, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %2, align 4
  br label %197

196:                                              ; preds = %169
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %196, %187
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i32 @idt_nt_read(%struct.idt_ntb_dev*, i32) #1

declare dso_local i8* @GET_FIELD(i32, i32) #1

declare dso_local i32 @idt_sw_read(%struct.idt_ntb_dev*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i64 @IS_FLD_SET(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
