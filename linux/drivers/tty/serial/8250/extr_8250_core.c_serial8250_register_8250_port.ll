; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_serial8250_register_8250_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_serial8250_register_8250_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i64, i32, %struct.TYPE_6__, i32, i64, i64, %struct.mctrl_gpios*, i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mctrl_gpios = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@serial_mutex = common dso_local global i32 0, align 4
@PORT_8250_CIR = common dso_local global i64 0, align 8
@serial8250_reg = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"skipping CIR port at 0x%lx / 0x%llx, IRQ %d\0A\00", align 1
@serial_8250_overrun_backoff_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial8250_register_8250_port(%struct.uart_8250_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca %struct.uart_8250_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mctrl_gpios*, align 8
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  %7 = load i32, i32* @ENOSPC, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %518

17:                                               ; preds = %1
  %18 = call i32 @mutex_lock(i32* @serial_mutex)
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %20 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %19, i32 0, i32 2
  %21 = call %struct.uart_8250_port* @serial8250_find_match_or_unused(%struct.TYPE_6__* %20)
  store %struct.uart_8250_port* %21, %struct.uart_8250_port** %4, align 8
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %23 = icmp ne %struct.uart_8250_port* %22, null
  br i1 %23, label %24, label %514

24:                                               ; preds = %17
  %25 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %26 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PORT_8250_CIR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %514

31:                                               ; preds = %24
  %32 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %33 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %39 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %38, i32 0, i32 2
  %40 = call i32 @uart_remove_one_port(i32* @serial8250_reg, %struct.TYPE_6__* %39)
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %47 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 6
  store i32 %45, i32* %48, align 8
  %49 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 31
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %54 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 31
  store i32 %52, i32* %55, align 4
  %56 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %57 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %61 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  store i32 %59, i32* %62, align 8
  %63 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %64 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 30
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %68 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 30
  store i32 %66, i32* %69, align 8
  %70 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %71 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %75 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %78 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 21
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %82 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 21
  store i64 %80, i64* %83, align 8
  %84 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %85 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 29
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %89 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 29
  store i32 %87, i32* %90, align 4
  %91 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %92 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 28
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %96 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 28
  store i32 %94, i32* %97, align 8
  %98 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %99 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %105 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 8
  %107 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %108 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %111 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 4
  %112 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %113 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %117 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 5
  store i64 %115, i64* %118, align 8
  %119 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %120 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 27
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %124 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 27
  store i32 %122, i32* %125, align 4
  %126 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %127 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 26
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %131 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 26
  store i32 %129, i32* %132, align 8
  %133 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %134 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %133, i32 0, i32 7
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %137 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %136, i32 0, i32 7
  store i64 %135, i64* %137, align 8
  %138 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %139 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %142 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %144 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 25
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %148 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 25
  store i32 %146, i32* %149, align 4
  %150 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %151 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 24
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %155 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 24
  store i32 %153, i32* %156, align 8
  %157 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %158 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 23
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %162 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 23
  store i32 %160, i32* %163, align 4
  %164 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %165 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 22
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %169 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 22
  store i32 %167, i32* %170, align 8
  %171 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %172 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %175 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %174, i32 0, i32 8
  store i32 %173, i32* %175, align 8
  %176 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %177 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 21
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %41
  %182 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %183 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %182, i32 0, i32 7
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %181
  %187 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %188 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 21
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %192 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %191, i32 0, i32 7
  store i64 %190, i64* %192, align 8
  br label %193

193:                                              ; preds = %186, %181, %41
  %194 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %195 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 7
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %193
  %200 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %201 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 7
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %205 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 7
  store i64 %203, i64* %206, align 8
  br label %207

207:                                              ; preds = %199, %193
  %208 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %209 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %207
  %216 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %217 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %221 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  store i64 %219, i64* %222, align 8
  br label %223

223:                                              ; preds = %215, %207
  %224 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %225 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 7
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @has_acpi_companion(i64 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %245, label %230

230:                                              ; preds = %223
  %231 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %232 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %231, i32 0, i32 2
  %233 = call %struct.mctrl_gpios* @mctrl_gpio_init(%struct.TYPE_6__* %232, i32 0)
  store %struct.mctrl_gpios* %233, %struct.mctrl_gpios** %6, align 8
  %234 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %235 = call i64 @IS_ERR(%struct.mctrl_gpios* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %230
  %238 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %239 = call i32 @PTR_ERR(%struct.mctrl_gpios* %238)
  store i32 %239, i32* %5, align 4
  br label %515

240:                                              ; preds = %230
  %241 = load %struct.mctrl_gpios*, %struct.mctrl_gpios** %6, align 8
  %242 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %243 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %242, i32 0, i32 6
  store %struct.mctrl_gpios* %241, %struct.mctrl_gpios** %243, align 8
  br label %244

244:                                              ; preds = %240
  br label %245

245:                                              ; preds = %244, %223
  %246 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %247 = call i32 @serial8250_set_defaults(%struct.uart_8250_port* %246)
  %248 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %249 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 20
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %245
  %254 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %255 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 20
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %259 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 20
  store i64 %257, i64* %260, align 8
  br label %261

261:                                              ; preds = %253, %245
  %262 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %263 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 19
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %261
  %268 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %269 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 19
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %273 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 19
  store i64 %271, i64* %274, align 8
  br label %275

275:                                              ; preds = %267, %261
  %276 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %277 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 18
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %275
  %282 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %283 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 18
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %287 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 18
  store i64 %285, i64* %288, align 8
  br label %289

289:                                              ; preds = %281, %275
  %290 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %291 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 17
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %303

295:                                              ; preds = %289
  %296 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %297 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 17
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %301 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 17
  store i64 %299, i64* %302, align 8
  br label %303

303:                                              ; preds = %295, %289
  %304 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %305 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 16
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %303
  %310 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %311 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 16
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %315 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 16
  store i64 %313, i64* %316, align 8
  br label %317

317:                                              ; preds = %309, %303
  %318 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %319 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 15
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %317
  %324 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %325 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 15
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %329 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 15
  store i64 %327, i64* %330, align 8
  br label %331

331:                                              ; preds = %323, %317
  %332 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %333 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 14
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %345

337:                                              ; preds = %331
  %338 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %339 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 14
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %343 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 14
  store i64 %341, i64* %344, align 8
  br label %345

345:                                              ; preds = %337, %331
  %346 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %347 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 13
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %359

351:                                              ; preds = %345
  %352 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %353 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 13
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %357 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 13
  store i64 %355, i64* %358, align 8
  br label %359

359:                                              ; preds = %351, %345
  %360 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %361 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 12
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %373

365:                                              ; preds = %359
  %366 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %367 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %366, i32 0, i32 2
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 12
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %371 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 12
  store i64 %369, i64* %372, align 8
  br label %373

373:                                              ; preds = %365, %359
  %374 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %375 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 11
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %387

379:                                              ; preds = %373
  %380 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %381 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 11
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %385 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 11
  store i64 %383, i64* %386, align 8
  br label %387

387:                                              ; preds = %379, %373
  %388 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %389 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %388, i32 0, i32 2
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 10
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %401

393:                                              ; preds = %387
  %394 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %395 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 10
  %397 = load i64, i64* %396, align 8
  %398 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %399 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 10
  store i64 %397, i64* %400, align 8
  br label %401

401:                                              ; preds = %393, %387
  %402 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %403 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 9
  %405 = load i64, i64* %404, align 8
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %415

407:                                              ; preds = %401
  %408 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %409 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %408, i32 0, i32 2
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 9
  %411 = load i64, i64* %410, align 8
  %412 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %413 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %412, i32 0, i32 2
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i32 0, i32 9
  store i64 %411, i64* %414, align 8
  br label %415

415:                                              ; preds = %407, %401
  %416 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %417 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %416, i32 0, i32 2
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 8
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %429

421:                                              ; preds = %415
  %422 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %423 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %422, i32 0, i32 2
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 8
  %425 = load i64, i64* %424, align 8
  %426 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %427 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 8
  store i64 %425, i64* %428, align 8
  br label %429

429:                                              ; preds = %421, %415
  %430 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %431 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %430, i32 0, i32 5
  %432 = load i64, i64* %431, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %440

434:                                              ; preds = %429
  %435 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %436 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %435, i32 0, i32 5
  %437 = load i64, i64* %436, align 8
  %438 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %439 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %438, i32 0, i32 5
  store i64 %437, i64* %439, align 8
  br label %440

440:                                              ; preds = %434, %429
  %441 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %442 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %441, i32 0, i32 4
  %443 = load i64, i64* %442, align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %451

445:                                              ; preds = %440
  %446 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %447 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %446, i32 0, i32 4
  %448 = load i64, i64* %447, align 8
  %449 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %450 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %449, i32 0, i32 4
  store i64 %448, i64* %450, align 8
  br label %451

451:                                              ; preds = %445, %440
  %452 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %453 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %452, i32 0, i32 2
  %454 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %453, i32 0, i32 1
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* @PORT_8250_CIR, align 8
  %457 = icmp ne i64 %455, %456
  br i1 %457, label %458, label %477

458:                                              ; preds = %451
  %459 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %460 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %459, i32 0, i32 2
  %461 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %462 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %461, i32 0, i32 3
  %463 = call i32 @serial8250_isa_config(i32 0, %struct.TYPE_6__* %460, i32* %462)
  %464 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %465 = call i32 @serial8250_apply_quirks(%struct.uart_8250_port* %464)
  %466 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %467 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %466, i32 0, i32 2
  %468 = call i32 @uart_add_one_port(i32* @serial8250_reg, %struct.TYPE_6__* %467)
  store i32 %468, i32* %5, align 4
  %469 = load i32, i32* %5, align 4
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %476

471:                                              ; preds = %458
  %472 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %473 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %472, i32 0, i32 2
  %474 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 4
  store i32 %475, i32* %5, align 4
  br label %476

476:                                              ; preds = %471, %458
  br label %495

477:                                              ; preds = %451
  %478 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %479 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %478, i32 0, i32 2
  %480 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %479, i32 0, i32 7
  %481 = load i64, i64* %480, align 8
  %482 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %483 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %483, i32 0, i32 6
  %485 = load i32, i32* %484, align 8
  %486 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %487 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %486, i32 0, i32 2
  %488 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %487, i32 0, i32 5
  %489 = load i64, i64* %488, align 8
  %490 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %491 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %491, i32 0, i32 4
  %493 = load i32, i32* %492, align 8
  %494 = call i32 @dev_info(i64 %481, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %485, i64 %489, i32 %493)
  store i32 0, i32* %5, align 4
  br label %495

495:                                              ; preds = %477, %476
  %496 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %497 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %496, i32 0, i32 0
  %498 = load i64, i64* %497, align 8
  %499 = icmp sgt i64 %498, 0
  br i1 %499, label %500, label %510

500:                                              ; preds = %495
  %501 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %502 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %505 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %504, i32 0, i32 0
  store i64 %503, i64* %505, align 8
  %506 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %507 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %506, i32 0, i32 1
  %508 = load i32, i32* @serial_8250_overrun_backoff_work, align 4
  %509 = call i32 @INIT_DELAYED_WORK(i32* %507, i32 %508)
  br label %513

510:                                              ; preds = %495
  %511 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %512 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %511, i32 0, i32 0
  store i64 0, i64* %512, align 8
  br label %513

513:                                              ; preds = %510, %500
  br label %514

514:                                              ; preds = %513, %24, %17
  br label %515

515:                                              ; preds = %514, %237
  %516 = call i32 @mutex_unlock(i32* @serial_mutex)
  %517 = load i32, i32* %5, align 4
  store i32 %517, i32* %2, align 4
  br label %518

518:                                              ; preds = %515, %14
  %519 = load i32, i32* %2, align 4
  ret i32 %519
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.uart_8250_port* @serial8250_find_match_or_unused(%struct.TYPE_6__*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @has_acpi_companion(i64) #1

declare dso_local %struct.mctrl_gpios* @mctrl_gpio_init(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mctrl_gpios*) #1

declare dso_local i32 @PTR_ERR(%struct.mctrl_gpios*) #1

declare dso_local i32 @serial8250_set_defaults(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_isa_config(i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @serial8250_apply_quirks(%struct.uart_8250_port*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(i64, i8*, i32, i64, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
