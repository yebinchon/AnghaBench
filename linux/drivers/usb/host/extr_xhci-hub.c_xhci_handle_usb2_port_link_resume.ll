; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_handle_usb2_port_link_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_handle_usb2_port_link_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_port = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.xhci_bus_state, %struct.usb_hcd* }
%struct.xhci_bus_state = type { i64*, i32, i32, i32, i32*, i32 }
%struct.usb_hcd = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.xhci_hcd = type { i32 }

@PORT_RESET = common dso_local global i64 0, align 8
@PORT_PE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@USB_RESUME_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"resume USB2 port %d-%d\0A\00", align 1
@PORT_PLC = common dso_local global i32 0, align 4
@XDEV_U0 = common dso_local global i32 0, align 4
@XHCI_MAX_REXIT_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"slot_id is zero\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Port resume timed out, port %d-%d: 0x%x\0A\00", align 1
@USB_PORT_STAT_SUSPEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_port*, i64*, i64, i64)* @xhci_handle_usb2_port_link_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_handle_usb2_port_link_resume(%struct.xhci_port* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_port*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xhci_bus_state*, align 8
  %11 = alloca %struct.xhci_hcd*, align 8
  %12 = alloca %struct.usb_hcd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.xhci_port* %0, %struct.xhci_port** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.xhci_port*, %struct.xhci_port** %6, align 8
  %19 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %21, align 8
  store %struct.usb_hcd* %22, %struct.usb_hcd** %12, align 8
  %23 = load %struct.xhci_port*, %struct.xhci_port** %6, align 8
  %24 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.xhci_bus_state* %26, %struct.xhci_bus_state** %10, align 8
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %28 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %27)
  store %struct.xhci_hcd* %28, %struct.xhci_hcd** %11, align 8
  %29 = load %struct.xhci_port*, %struct.xhci_port** %6, align 8
  %30 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @PORT_RESET, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %4
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @PORT_PE, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36, %4
  %42 = load i64*, i64** %7, align 8
  store i64 4294967295, i64* %42, align 8
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %209

45:                                               ; preds = %36
  %46 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %10, align 8
  %47 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %45
  %54 = load i64, i64* %14, align 8
  %55 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %10, align 8
  %56 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %55, i32 0, i32 5
  %57 = call i64 @test_bit(i64 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %83

60:                                               ; preds = %53
  %61 = load i64, i64* @jiffies, align 8
  %62 = load i32, i32* @USB_RESUME_TIMEOUT, align 4
  %63 = call i64 @msecs_to_jiffies(i32 %62)
  %64 = add i64 %61, %63
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %10, align 8
  %67 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %66, i32 0, i32 5
  %68 = call i32 @set_bit(i64 %65, i32* %67)
  %69 = load i64, i64* %15, align 8
  %70 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %10, align 8
  %71 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %14, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  store i64 %69, i64* %74, align 8
  %75 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %76 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %75, i32 0, i32 1
  %77 = load i64, i64* %15, align 8
  %78 = call i32 @mod_timer(i32* %76, i64 %77)
  %79 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %80 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %79, i32 0, i32 0
  %81 = load i64, i64* %14, align 8
  %82 = call i32 @usb_hcd_start_port_resume(%struct.TYPE_5__* %80, i64 %81)
  br label %83

83:                                               ; preds = %60, %59
  br label %208

84:                                               ; preds = %45
  %85 = load i64, i64* @jiffies, align 8
  %86 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %10, align 8
  %87 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %14, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @time_after_eq(i64 %85, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %202

94:                                               ; preds = %84
  %95 = load %struct.xhci_hcd*, %struct.xhci_hcd** %11, align 8
  %96 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %97 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* %14, align 8
  %101 = add i64 %100, 1
  %102 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %99, i64 %101)
  %103 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %10, align 8
  %104 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* %14, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  store i64 0, i64* %107, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %10, align 8
  %110 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %109, i32 0, i32 5
  %111 = call i32 @clear_bit(i64 %108, i32* %110)
  %112 = load i64, i64* %14, align 8
  %113 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %10, align 8
  %114 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %113, i32 0, i32 3
  %115 = call i32 @set_bit(i64 %112, i32* %114)
  %116 = load %struct.xhci_hcd*, %struct.xhci_hcd** %11, align 8
  %117 = load %struct.xhci_port*, %struct.xhci_port** %6, align 8
  %118 = load i32, i32* @PORT_PLC, align 4
  %119 = call i32 @xhci_test_and_clear_bit(%struct.xhci_hcd* %116, %struct.xhci_port* %117, i32 %118)
  %120 = load %struct.xhci_hcd*, %struct.xhci_hcd** %11, align 8
  %121 = load %struct.xhci_port*, %struct.xhci_port** %6, align 8
  %122 = load i32, i32* @XDEV_U0, align 4
  %123 = call i32 @xhci_set_link_state(%struct.xhci_hcd* %120, %struct.xhci_port* %121, i32 %122)
  %124 = load %struct.xhci_hcd*, %struct.xhci_hcd** %11, align 8
  %125 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %124, i32 0, i32 0
  %126 = load i64, i64* %9, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  %128 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %10, align 8
  %129 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %14, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* @XHCI_MAX_REXIT_TIMEOUT_MS, align 4
  %134 = call i64 @msecs_to_jiffies(i32 %133)
  %135 = call i32 @wait_for_completion_timeout(i32* %132, i64 %134)
  store i32 %135, i32* %16, align 4
  %136 = load %struct.xhci_hcd*, %struct.xhci_hcd** %11, align 8
  %137 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %136, i32 0, i32 0
  %138 = load i64, i64* %9, align 8
  %139 = call i32 @spin_lock_irqsave(i32* %137, i64 %138)
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %160

142:                                              ; preds = %94
  %143 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %144 = load %struct.xhci_hcd*, %struct.xhci_hcd** %11, align 8
  %145 = load i64, i64* %14, align 8
  %146 = add i64 %145, 1
  %147 = call i32 @xhci_find_slot_id_by_port(%struct.usb_hcd* %143, %struct.xhci_hcd* %144, i64 %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %142
  %151 = load %struct.xhci_hcd*, %struct.xhci_hcd** %11, align 8
  %152 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i64*, i64** %7, align 8
  store i64 4294967295, i64* %153, align 8
  %154 = load i32, i32* @ENODEV, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %5, align 4
  br label %209

156:                                              ; preds = %142
  %157 = load %struct.xhci_hcd*, %struct.xhci_hcd** %11, align 8
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @xhci_ring_device(%struct.xhci_hcd* %157, i32 %158)
  br label %182

160:                                              ; preds = %94
  %161 = load %struct.xhci_port*, %struct.xhci_port** %6, align 8
  %162 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @readl(i32 %163)
  store i32 %164, i32* %17, align 4
  %165 = load %struct.xhci_hcd*, %struct.xhci_hcd** %11, align 8
  %166 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %167 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i64, i64* %14, align 8
  %171 = add i64 %170, 1
  %172 = load i32, i32* %17, align 4
  %173 = call i32 @xhci_warn(%struct.xhci_hcd* %165, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %169, i64 %171, i32 %172)
  %174 = load i64, i64* @USB_PORT_STAT_SUSPEND, align 8
  %175 = load i64*, i64** %7, align 8
  %176 = load i64, i64* %175, align 8
  %177 = or i64 %176, %174
  store i64 %177, i64* %175, align 8
  %178 = load i64, i64* %14, align 8
  %179 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %10, align 8
  %180 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %179, i32 0, i32 3
  %181 = call i32 @clear_bit(i64 %178, i32* %180)
  br label %182

182:                                              ; preds = %160, %156
  %183 = load %struct.usb_hcd*, %struct.usb_hcd** %12, align 8
  %184 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %183, i32 0, i32 0
  %185 = load i64, i64* %14, align 8
  %186 = call i32 @usb_hcd_end_port_resume(%struct.TYPE_5__* %184, i64 %185)
  %187 = load i64, i64* %14, align 8
  %188 = trunc i64 %187 to i32
  %189 = shl i32 1, %188
  %190 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %10, align 8
  %191 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load i64, i64* %14, align 8
  %195 = trunc i64 %194 to i32
  %196 = shl i32 1, %195
  %197 = xor i32 %196, -1
  %198 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %10, align 8
  %199 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, %197
  store i32 %201, i32* %199, align 4
  br label %207

202:                                              ; preds = %84
  %203 = load i64, i64* @USB_PORT_STAT_SUSPEND, align 8
  %204 = load i64*, i64** %7, align 8
  %205 = load i64, i64* %204, align 8
  %206 = or i64 %205, %203
  store i64 %206, i64* %204, align 8
  br label %207

207:                                              ; preds = %202, %182
  br label %208

208:                                              ; preds = %207, %83
  store i32 0, i32* %5, align 4
  br label %209

209:                                              ; preds = %208, %150, %41
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @usb_hcd_start_port_resume(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @xhci_test_and_clear_bit(%struct.xhci_hcd*, %struct.xhci_port*, i32) #1

declare dso_local i32 @xhci_set_link_state(%struct.xhci_hcd*, %struct.xhci_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xhci_find_slot_id_by_port(%struct.usb_hcd*, %struct.xhci_hcd*, i64) #1

declare dso_local i32 @xhci_ring_device(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i32, i64, i32) #1

declare dso_local i32 @usb_hcd_end_port_resume(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
