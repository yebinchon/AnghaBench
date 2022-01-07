; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_alauda_reset_media.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_alauda_reset_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i32 }

@ALAUDA_BULK_CMD = common dso_local global i8 0, align 1
@ALAUDA_BULK_RESET_MEDIA = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @alauda_reset_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_reset_media(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %4 = load %struct.us_data*, %struct.us_data** %2, align 8
  %5 = getelementptr inbounds %struct.us_data, %struct.us_data* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @memset(i8* %7, i32 0, i32 9)
  %9 = load i8, i8* @ALAUDA_BULK_CMD, align 1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %9, i8* %11, align 1
  %12 = load i8, i8* @ALAUDA_BULK_RESET_MEDIA, align 1
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %12, i8* %14, align 1
  %15 = load %struct.us_data*, %struct.us_data** %2, align 8
  %16 = call zeroext i8 @MEDIA_PORT(%struct.us_data* %15)
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 8
  store i8 %16, i8* %18, align 1
  %19 = load %struct.us_data*, %struct.us_data** %2, align 8
  %20 = load %struct.us_data*, %struct.us_data** %2, align 8
  %21 = getelementptr inbounds %struct.us_data, %struct.us_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %19, i32 %22, i8* %23, i32 9, i32* null)
  ret i32 %24
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local zeroext i8 @MEDIA_PORT(%struct.us_data*) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
