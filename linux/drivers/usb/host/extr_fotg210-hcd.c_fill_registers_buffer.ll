; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fill_registers_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fill_registers_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_buffer = type { i8*, i32, i32 }
%struct.usb_hcd = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.fotg210_hcd = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@fill_registers_buffer.fmt = internal constant [5 x i8] c"%*s\0A\00", align 1
@fill_registers_buffer.label = internal constant [1 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [52 x i8] c"bus %s, device %s\0A%s\0ASUSPENDED(no register access)\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"bus %s, device %s\0A%s\0AEHCI %x.%02x, rh state %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"structural params 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"capability params 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"uframe %04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"async unlink qh %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_buffer*)* @fill_registers_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_registers_buffer(%struct.debug_buffer* %0) #0 {
  %2 = alloca %struct.debug_buffer*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.fotg210_hcd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [80 x i8], align 16
  store %struct.debug_buffer* %0, %struct.debug_buffer** %2, align 8
  %11 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.usb_hcd* @bus_to_hcd(i32 %13)
  store %struct.usb_hcd* %14, %struct.usb_hcd** %3, align 8
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %16 = call %struct.fotg210_hcd* @hcd_to_fotg210(%struct.usb_hcd* %15)
  store %struct.fotg210_hcd* %16, %struct.fotg210_hcd** %4, align 8
  %17 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %18 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %21 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %24 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %23, i32 0, i32 1
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %28 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %1
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %42 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = call i32 @dev_name(%struct.TYPE_12__* %44)
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %47 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %45, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %216

50:                                               ; preds = %1
  %51 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %52 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %53 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %54 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %53, i32 0, i32 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = call i32 @fotg210_readl(%struct.fotg210_hcd* %52, i32* %56)
  %58 = call i32 @HC_VERSION(%struct.fotg210_hcd* %51, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %62 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %70 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = call i32 @dev_name(%struct.TYPE_12__* %72)
  %74 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %75 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = lshr i32 %77, 8
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 255
  %81 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %82 = call i32 @rh_state_string(%struct.fotg210_hcd* %81)
  %83 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %59, i32 %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %73, i32 %76, i32 %78, i32 %80, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %9, align 8
  %91 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %92 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %93 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %92, i32 0, i32 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = call i32 @fotg210_readl(%struct.fotg210_hcd* %91, i32* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %97, i32 %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i8*, i8** %9, align 8
  %106 = zext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %9, align 8
  %108 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %109 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %110 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %109, i32 0, i32 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = call i32 @fotg210_readl(%struct.fotg210_hcd* %108, i32* %112)
  store i32 %113, i32* %8, align 4
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %114, i32 %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = sub i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %9, align 8
  %125 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %126 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %127 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %128 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %127, i32 0, i32 3
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = call i32 @fotg210_readl(%struct.fotg210_hcd* %126, i32* %130)
  %132 = call i32 @dbg_status_buf(i8* %125, i32 80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fill_registers_buffer.label, i64 0, i64 0), i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load i8*, i8** %9, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %6, align 4
  %136 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %137 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %133, i32 %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @fill_registers_buffer.fmt, i64 0, i64 0), i32 %135, i8* %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = sub i32 %139, %138
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i8*, i8** %9, align 8
  %143 = zext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8* %144, i8** %9, align 8
  %145 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %146 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %147 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %148 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %147, i32 0, i32 3
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = call i32 @fotg210_readl(%struct.fotg210_hcd* %146, i32* %150)
  %152 = call i32 @dbg_command_buf(i8* %145, i32 80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fill_registers_buffer.label, i64 0, i64 0), i32 %151)
  store i32 %152, i32* %6, align 4
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %6, align 4
  %156 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %157 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %153, i32 %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @fill_registers_buffer.fmt, i64 0, i64 0), i32 %155, i8* %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %7, align 4
  %160 = sub i32 %159, %158
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load i8*, i8** %9, align 8
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %9, align 8
  %165 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %166 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %167 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %168 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %167, i32 0, i32 3
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = call i32 @fotg210_readl(%struct.fotg210_hcd* %166, i32* %170)
  %172 = call i32 @dbg_intr_buf(i8* %165, i32 80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @fill_registers_buffer.label, i64 0, i64 0), i32 %171)
  store i32 %172, i32* %6, align 4
  %173 = load i8*, i8** %9, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %6, align 4
  %176 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %177 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %173, i32 %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @fill_registers_buffer.fmt, i64 0, i64 0), i32 %175, i8* %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %7, align 4
  %180 = sub i32 %179, %178
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %6, align 4
  %182 = load i8*, i8** %9, align 8
  %183 = zext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  store i8* %184, i8** %9, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = load i32, i32* %7, align 4
  %187 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %188 = call i32 @fotg210_read_frame_index(%struct.fotg210_hcd* %187)
  %189 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %185, i32 %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %188)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %7, align 4
  %192 = sub i32 %191, %190
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %6, align 4
  %194 = load i8*, i8** %9, align 8
  %195 = zext i32 %193 to i64
  %196 = getelementptr inbounds i8, i8* %194, i64 %195
  store i8* %196, i8** %9, align 8
  %197 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %198 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %50
  %202 = load i8*, i8** %9, align 8
  %203 = load i32, i32* %7, align 4
  %204 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %205 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %202, i32 %203, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %206)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* %7, align 4
  %210 = sub i32 %209, %208
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %6, align 4
  %212 = load i8*, i8** %9, align 8
  %213 = zext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8* %214, i8** %9, align 8
  br label %215

215:                                              ; preds = %201, %50
  br label %216

216:                                              ; preds = %215, %30
  %217 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %218 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %217, i32 0, i32 1
  %219 = load i64, i64* %5, align 8
  %220 = call i32 @spin_unlock_irqrestore(i32* %218, i64 %219)
  %221 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %222 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sub i32 %223, %224
  ret i32 %225
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local %struct.fotg210_hcd* @hcd_to_fotg210(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @HC_VERSION(%struct.fotg210_hcd*, i32) #1

declare dso_local i32 @fotg210_readl(%struct.fotg210_hcd*, i32*) #1

declare dso_local i32 @rh_state_string(%struct.fotg210_hcd*) #1

declare dso_local i32 @dbg_status_buf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dbg_command_buf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dbg_intr_buf(i8*, i32, i8*, i32) #1

declare dso_local i32 @fotg210_read_frame_index(%struct.fotg210_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
