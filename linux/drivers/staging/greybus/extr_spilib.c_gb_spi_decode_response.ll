; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_spilib.c_gb_spi_decode_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_spilib.c_gb_spi_decode_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_spilib = type { %struct.spi_transfer*, i64, i64, %struct.spi_transfer* }
%struct.spi_transfer = type { i64, i64 }
%struct.spi_message = type { i32 }
%struct.gb_spi_transfer_response = type { i8* }

@transfer_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_spilib*, %struct.spi_message*, %struct.gb_spi_transfer_response*)* @gb_spi_decode_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_spi_decode_response(%struct.gb_spilib* %0, %struct.spi_message* %1, %struct.gb_spi_transfer_response* %2) #0 {
  %4 = alloca %struct.gb_spilib*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca %struct.gb_spi_transfer_response*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.gb_spilib* %0, %struct.gb_spilib** %4, align 8
  store %struct.spi_message* %1, %struct.spi_message** %5, align 8
  store %struct.gb_spi_transfer_response* %2, %struct.gb_spi_transfer_response** %6, align 8
  %10 = load %struct.gb_spilib*, %struct.gb_spilib** %4, align 8
  %11 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %10, i32 0, i32 3
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %11, align 8
  store %struct.spi_transfer* %12, %struct.spi_transfer** %7, align 8
  %13 = load %struct.gb_spi_transfer_response*, %struct.gb_spi_transfer_response** %6, align 8
  %14 = getelementptr inbounds %struct.gb_spi_transfer_response, %struct.gb_spi_transfer_response* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %74, %3
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %18 = icmp ne %struct.spi_transfer* %17, null
  br i1 %18, label %19, label %78

19:                                               ; preds = %16
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %19
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %26 = load %struct.gb_spilib*, %struct.gb_spilib** %4, align 8
  %27 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %26, i32 0, i32 3
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %27, align 8
  %29 = icmp eq %struct.spi_transfer* %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.gb_spilib*, %struct.gb_spilib** %4, align 8
  %35 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  store i64 %37, i64* %9, align 8
  br label %53

38:                                               ; preds = %24
  %39 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %40 = load %struct.gb_spilib*, %struct.gb_spilib** %4, align 8
  %41 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %40, i32 0, i32 0
  %42 = load %struct.spi_transfer*, %struct.spi_transfer** %41, align 8
  %43 = icmp eq %struct.spi_transfer* %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.gb_spilib*, %struct.gb_spilib** %4, align 8
  %46 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %9, align 8
  br label %52

48:                                               ; preds = %38
  %49 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %30
  %54 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %55 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.gb_spilib*, %struct.gb_spilib** %4, align 8
  %58 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @memcpy(i64 %60, i8* %61, i64 %62)
  %64 = load i64, i64* %9, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr i8, i8* %65, i64 %64
  store i8* %66, i8** %8, align 8
  br label %67

67:                                               ; preds = %53, %19
  %68 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %69 = load %struct.gb_spilib*, %struct.gb_spilib** %4, align 8
  %70 = getelementptr inbounds %struct.gb_spilib, %struct.gb_spilib* %69, i32 0, i32 0
  %71 = load %struct.spi_transfer*, %struct.spi_transfer** %70, align 8
  %72 = icmp eq %struct.spi_transfer* %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %78

74:                                               ; preds = %67
  %75 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %76 = load i32, i32* @transfer_list, align 4
  %77 = call %struct.spi_transfer* @list_next_entry(%struct.spi_transfer* %75, i32 %76)
  store %struct.spi_transfer* %77, %struct.spi_transfer** %7, align 8
  br label %16

78:                                               ; preds = %73, %16
  ret void
}

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local %struct.spi_transfer* @list_next_entry(%struct.spi_transfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
