; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_sysfs.c_usbip_sockfd_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_sysfs.c_usbip_sockfd_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vudc = type { i32, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i8*, i8*, %struct.socket* }
%struct.socket = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"no device\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"gadget not bound\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Device already connected\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SDEV_ST_AVAILABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to lookup sock\00", align 1
@v_rx_loop = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"vudc_rx\00", align 1
@v_tx_loop = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"vudc_tx\00", align 1
@SDEV_ST_USED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"Device not connected\00", align 1
@VUDC_EVENT_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @usbip_sockfd_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @usbip_sockfd_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vudc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.socket*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i64 @dev_get_drvdata(%struct.device* %17)
  %19 = inttoptr i64 %18 to %struct.vudc*
  store %struct.vudc* %19, %struct.vudc** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtoint(i8* %20, i32 0, i32* %12)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %195

27:                                               ; preds = %4
  %28 = load %struct.vudc*, %struct.vudc** %10, align 8
  %29 = icmp ne %struct.vudc* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @ENODEV, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %195

35:                                               ; preds = %27
  %36 = load %struct.vudc*, %struct.vudc** %10, align 8
  %37 = getelementptr inbounds %struct.vudc, %struct.vudc* %36, i32 0, i32 1
  %38 = load i64, i64* %15, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.vudc*, %struct.vudc** %10, align 8
  %41 = getelementptr inbounds %struct.vudc, %struct.vudc* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.vudc*, %struct.vudc** %10, align 8
  %46 = getelementptr inbounds %struct.vudc, %struct.vudc* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44, %35
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i64, i64* @ENODEV, align 8
  %53 = sub i64 0, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %16, align 4
  br label %188

55:                                               ; preds = %44
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %142

58:                                               ; preds = %55
  %59 = load %struct.vudc*, %struct.vudc** %10, align 8
  %60 = getelementptr inbounds %struct.vudc, %struct.vudc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %16, align 4
  br label %188

68:                                               ; preds = %58
  %69 = load %struct.vudc*, %struct.vudc** %10, align 8
  %70 = getelementptr inbounds %struct.vudc, %struct.vudc* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = call i32 @spin_lock_irq(i32* %71)
  %73 = load %struct.vudc*, %struct.vudc** %10, align 8
  %74 = getelementptr inbounds %struct.vudc, %struct.vudc* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SDEV_ST_AVAILABLE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load i64, i64* @EINVAL, align 8
  %81 = sub i64 0, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %16, align 4
  br label %183

83:                                               ; preds = %68
  %84 = load i32, i32* %12, align 4
  %85 = call %struct.socket* @sockfd_lookup(i32 %84, i32* %13)
  store %struct.socket* %85, %struct.socket** %14, align 8
  %86 = load %struct.socket*, %struct.socket** %14, align 8
  %87 = icmp ne %struct.socket* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i64, i64* @EINVAL, align 8
  %92 = sub i64 0, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %16, align 4
  br label %183

94:                                               ; preds = %83
  %95 = load %struct.socket*, %struct.socket** %14, align 8
  %96 = load %struct.vudc*, %struct.vudc** %10, align 8
  %97 = getelementptr inbounds %struct.vudc, %struct.vudc* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  store %struct.socket* %95, %struct.socket** %98, align 8
  %99 = load %struct.vudc*, %struct.vudc** %10, align 8
  %100 = getelementptr inbounds %struct.vudc, %struct.vudc* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = call i32 @spin_unlock_irq(i32* %101)
  %103 = load %struct.vudc*, %struct.vudc** %10, align 8
  %104 = getelementptr inbounds %struct.vudc, %struct.vudc* %103, i32 0, i32 1
  %105 = load i64, i64* %15, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load %struct.vudc*, %struct.vudc** %10, align 8
  %108 = getelementptr inbounds %struct.vudc, %struct.vudc* %107, i32 0, i32 2
  %109 = call i8* @kthread_get_run(i32* @v_rx_loop, %struct.TYPE_3__* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %110 = load %struct.vudc*, %struct.vudc** %10, align 8
  %111 = getelementptr inbounds %struct.vudc, %struct.vudc* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  store i8* %109, i8** %112, align 8
  %113 = load %struct.vudc*, %struct.vudc** %10, align 8
  %114 = getelementptr inbounds %struct.vudc, %struct.vudc* %113, i32 0, i32 2
  %115 = call i8* @kthread_get_run(i32* @v_tx_loop, %struct.TYPE_3__* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %116 = load %struct.vudc*, %struct.vudc** %10, align 8
  %117 = getelementptr inbounds %struct.vudc, %struct.vudc* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  store i8* %115, i8** %118, align 8
  %119 = load %struct.vudc*, %struct.vudc** %10, align 8
  %120 = getelementptr inbounds %struct.vudc, %struct.vudc* %119, i32 0, i32 1
  %121 = load i64, i64* %15, align 8
  %122 = call i32 @spin_lock_irqsave(i32* %120, i64 %121)
  %123 = load %struct.vudc*, %struct.vudc** %10, align 8
  %124 = getelementptr inbounds %struct.vudc, %struct.vudc* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = call i32 @spin_lock_irq(i32* %125)
  %127 = load i64, i64* @SDEV_ST_USED, align 8
  %128 = load %struct.vudc*, %struct.vudc** %10, align 8
  %129 = getelementptr inbounds %struct.vudc, %struct.vudc* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i64 %127, i64* %130, align 8
  %131 = load %struct.vudc*, %struct.vudc** %10, align 8
  %132 = getelementptr inbounds %struct.vudc, %struct.vudc* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = call i32 @spin_unlock_irq(i32* %133)
  %135 = load %struct.vudc*, %struct.vudc** %10, align 8
  %136 = getelementptr inbounds %struct.vudc, %struct.vudc* %135, i32 0, i32 3
  %137 = call i32 @ktime_get_ts64(i32* %136)
  %138 = load %struct.vudc*, %struct.vudc** %10, align 8
  %139 = call i32 @v_start_timer(%struct.vudc* %138)
  %140 = load %struct.vudc*, %struct.vudc** %10, align 8
  %141 = getelementptr inbounds %struct.vudc, %struct.vudc* %140, i32 0, i32 0
  store i32 1, i32* %141, align 8
  br label %177

142:                                              ; preds = %55
  %143 = load %struct.vudc*, %struct.vudc** %10, align 8
  %144 = getelementptr inbounds %struct.vudc, %struct.vudc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %142
  %148 = load %struct.device*, %struct.device** %6, align 8
  %149 = call i32 @dev_err(%struct.device* %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %150 = load i64, i64* @EINVAL, align 8
  %151 = sub i64 0, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %16, align 4
  br label %188

153:                                              ; preds = %142
  %154 = load %struct.vudc*, %struct.vudc** %10, align 8
  %155 = getelementptr inbounds %struct.vudc, %struct.vudc* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = call i32 @spin_lock_irq(i32* %156)
  %158 = load %struct.vudc*, %struct.vudc** %10, align 8
  %159 = getelementptr inbounds %struct.vudc, %struct.vudc* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SDEV_ST_USED, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %153
  %165 = load i64, i64* @EINVAL, align 8
  %166 = sub i64 0, %165
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %16, align 4
  br label %183

168:                                              ; preds = %153
  %169 = load %struct.vudc*, %struct.vudc** %10, align 8
  %170 = getelementptr inbounds %struct.vudc, %struct.vudc* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = call i32 @spin_unlock_irq(i32* %171)
  %173 = load %struct.vudc*, %struct.vudc** %10, align 8
  %174 = getelementptr inbounds %struct.vudc, %struct.vudc* %173, i32 0, i32 2
  %175 = load i32, i32* @VUDC_EVENT_DOWN, align 4
  %176 = call i32 @usbip_event_add(%struct.TYPE_3__* %174, i32 %175)
  br label %177

177:                                              ; preds = %168, %94
  %178 = load %struct.vudc*, %struct.vudc** %10, align 8
  %179 = getelementptr inbounds %struct.vudc, %struct.vudc* %178, i32 0, i32 1
  %180 = load i64, i64* %15, align 8
  %181 = call i32 @spin_unlock_irqrestore(i32* %179, i64 %180)
  %182 = load i64, i64* %9, align 8
  store i64 %182, i64* %5, align 8
  br label %195

183:                                              ; preds = %164, %88, %79
  %184 = load %struct.vudc*, %struct.vudc** %10, align 8
  %185 = getelementptr inbounds %struct.vudc, %struct.vudc* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = call i32 @spin_unlock_irq(i32* %186)
  br label %188

188:                                              ; preds = %183, %147, %63, %49
  %189 = load %struct.vudc*, %struct.vudc** %10, align 8
  %190 = getelementptr inbounds %struct.vudc, %struct.vudc* %189, i32 0, i32 1
  %191 = load i64, i64* %15, align 8
  %192 = call i32 @spin_unlock_irqrestore(i32* %190, i64 %191)
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %5, align 8
  br label %195

195:                                              ; preds = %188, %177, %30, %24
  %196 = load i64, i64* %5, align 8
  ret i64 %196
}

declare dso_local i64 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.socket* @sockfd_lookup(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @kthread_get_run(i32*, %struct.TYPE_3__*, i8*) #1

declare dso_local i32 @ktime_get_ts64(i32*) #1

declare dso_local i32 @v_start_timer(%struct.vudc*) #1

declare dso_local i32 @usbip_event_add(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
