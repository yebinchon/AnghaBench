; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_spi_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_spi_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.spi_device = type { i32, i32, i32, i32 }
%struct.max3421_hcd = type { i32, i32, i32*, i32, i32, i64 }

@MAX3421_REG_PINCTL = common dso_local global i64 0, align 8
@MAX3421_PINCTL_FDUPSPI_BIT = common dso_local global i32 0, align 4
@MAX3421_PINCTL_INTLEVEL_BIT = common dso_local global i32 0, align 4
@MAX3421_REG_REVISION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"bad rev 0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"rev 0x%x, SPI clk %dHz, bpw %u, irq %d\0A\00", align 1
@MAX3421_REG_HIEN = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ENABLE_IRQ = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@RESET_HCD = common dso_local global i32 0, align 4
@RESET_PORT = common dso_local global i32 0, align 4
@MAX3421_REG_HCTL = common dso_local global i64 0, align 8
@MAX3421_HCTL_BUSRST_BIT = common dso_local global i32 0, align 4
@CHECK_UNLINK = common dso_local global i32 0, align 4
@IOPIN_UPDATE = common dso_local global i32 0, align 4
@MAX3421_REG_IOPINS1 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"SPI thread exiting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @max3421_spi_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3421_spi_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.max3421_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.usb_hcd*
  store %struct.usb_hcd* %10, %struct.usb_hcd** %3, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.spi_device* @to_spi_device(i32 %14)
  store %struct.spi_device* %15, %struct.spi_device** %4, align 8
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %17 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %16)
  store %struct.max3421_hcd* %17, %struct.max3421_hcd** %5, align 8
  store i32 1, i32* %7, align 4
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %19 = load i64, i64* @MAX3421_REG_PINCTL, align 8
  %20 = load i32, i32* @MAX3421_PINCTL_FDUPSPI_BIT, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load i32, i32* @MAX3421_PINCTL_INTLEVEL_BIT, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = or i32 %21, %23
  %25 = call i32 @spi_wr8(%struct.usb_hcd* %18, i64 %19, i32 %24)
  br label %26

26:                                               ; preds = %47, %1
  %27 = call i32 (...) @kthread_should_stop()
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %32 = load i64, i64* @MAX3421_REG_REVISION, align 8
  %33 = call i8* @spi_rd8(%struct.usb_hcd* %31, i64 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %36 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %38 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 18
  br i1 %40, label %46, label %41

41:                                               ; preds = %30
  %42 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %43 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 19
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %30
  br label %55

47:                                               ; preds = %41
  %48 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 0
  %50 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %51 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = call i32 @msleep(i32 10000)
  br label %26

55:                                               ; preds = %46, %26
  %56 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %59 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32*, i8*, ...) @dev_info(i32* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %63, i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %210, %55
  %72 = call i32 (...) @kthread_should_stop()
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %75, label %211

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %101, label %78

78:                                               ; preds = %75
  %79 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %80 = load i64, i64* @MAX3421_REG_HIEN, align 8
  %81 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %82 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @spi_wr8(%struct.usb_hcd* %79, i64 %80, i32 %83)
  %85 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %86 = call i32 @set_current_state(i32 %85)
  %87 = load i32, i32* @ENABLE_IRQ, align 4
  %88 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %89 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %88, i32 0, i32 3
  %90 = call i64 @test_and_clear_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %78
  %93 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %94 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @enable_irq(i32 %95)
  br label %97

97:                                               ; preds = %92, %78
  %98 = call i32 (...) @schedule()
  %99 = load i32, i32* @TASK_RUNNING, align 4
  %100 = call i32 @__set_current_state(i32 %99)
  br label %101

101:                                              ; preds = %97, %75
  store i32 0, i32* %7, align 4
  %102 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %103 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %108 = call i32 @max3421_urb_done(%struct.usb_hcd* %107)
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %7, align 4
  br label %128

111:                                              ; preds = %101
  %112 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %113 = call i64 @max3421_handle_irqs(%struct.usb_hcd* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 1, i32* %7, align 4
  br label %127

116:                                              ; preds = %111
  %117 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %118 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %123 = call i32 @max3421_select_and_start_urb(%struct.usb_hcd* %122)
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %121, %116
  br label %127

127:                                              ; preds = %126, %115
  br label %128

128:                                              ; preds = %127, %106
  %129 = load i32, i32* @RESET_HCD, align 4
  %130 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %131 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %130, i32 0, i32 3
  %132 = call i64 @test_and_clear_bit(i32 %129, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %136 = call i32 @max3421_reset_hcd(%struct.usb_hcd* %135)
  %137 = load i32, i32* %7, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %134, %128
  %140 = load i32, i32* @RESET_PORT, align 4
  %141 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %142 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %141, i32 0, i32 3
  %143 = call i64 @test_and_clear_bit(i32 %140, i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %147 = load i64, i64* @MAX3421_REG_HCTL, align 8
  %148 = load i32, i32* @MAX3421_HCTL_BUSRST_BIT, align 4
  %149 = call i32 @BIT(i32 %148)
  %150 = call i32 @spi_wr8(%struct.usb_hcd* %146, i64 %147, i32 %149)
  store i32 1, i32* %7, align 4
  br label %151

151:                                              ; preds = %145, %139
  %152 = load i32, i32* @CHECK_UNLINK, align 4
  %153 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %154 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %153, i32 0, i32 3
  %155 = call i64 @test_and_clear_bit(i32 %152, i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %159 = call i32 @max3421_check_unlink(%struct.usb_hcd* %158)
  %160 = load i32, i32* %7, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %157, %151
  %163 = load i32, i32* @IOPIN_UPDATE, align 4
  %164 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %165 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %164, i32 0, i32 3
  %166 = call i64 @test_and_clear_bit(i32 %163, i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %210

168:                                              ; preds = %162
  store i32 0, i32* %6, align 4
  br label %169

169:                                              ; preds = %206, %168
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %172 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @ARRAY_SIZE(i32* %173)
  %175 = icmp slt i32 %170, %174
  br i1 %175, label %176, label %209

176:                                              ; preds = %169
  %177 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %178 = load i64, i64* @MAX3421_REG_IOPINS1, align 8
  %179 = call i8* @spi_rd8(%struct.usb_hcd* %177, i64 %178)
  %180 = ptrtoint i8* %179 to i32
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = and i32 %181, 240
  %183 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %184 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 15
  %191 = or i32 %182, %190
  store i32 %191, i32* %8, align 4
  %192 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %193 = load i64, i64* @MAX3421_REG_IOPINS1, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %193, %195
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @spi_wr8(%struct.usb_hcd* %192, i64 %196, i32 %197)
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %201 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 %199, i32* %205, align 4
  br label %206

206:                                              ; preds = %176
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %6, align 4
  br label %169

209:                                              ; preds = %169
  store i32 1, i32* %7, align 4
  br label %210

210:                                              ; preds = %209, %162
  br label %71

211:                                              ; preds = %71
  %212 = load i32, i32* @TASK_RUNNING, align 4
  %213 = call i32 @set_current_state(i32 %212)
  %214 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %215 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %214, i32 0, i32 0
  %216 = call i32 (i32*, i8*, ...) @dev_info(i32* %215, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local i32 @spi_wr8(%struct.usb_hcd*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i8* @spi_rd8(%struct.usb_hcd*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @max3421_urb_done(%struct.usb_hcd*) #1

declare dso_local i64 @max3421_handle_irqs(%struct.usb_hcd*) #1

declare dso_local i32 @max3421_select_and_start_urb(%struct.usb_hcd*) #1

declare dso_local i32 @max3421_reset_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @max3421_check_unlink(%struct.usb_hcd*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
