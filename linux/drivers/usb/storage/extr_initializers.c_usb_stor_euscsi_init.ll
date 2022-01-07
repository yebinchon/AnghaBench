; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_initializers.c_usb_stor_euscsi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_initializers.c_usb_stor_euscsi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Attempting to init eUSCSI bridge...\0A\00", align 1
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"-- result is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_stor_euscsi_init(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %4 = load %struct.us_data*, %struct.us_data** %2, align 8
  %5 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.us_data*, %struct.us_data** %2, align 8
  %7 = load %struct.us_data*, %struct.us_data** %2, align 8
  %8 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %11 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @HZ, align 4
  %14 = mul nsw i32 5, %13
  %15 = call i32 @usb_stor_control_msg(%struct.us_data* %6, i32 %9, i32 12, i32 %12, i32 1, i32 0, i32* null, i32 0, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.us_data*, %struct.us_data** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  ret i32 0
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @usb_stor_control_msg(%struct.us_data*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
