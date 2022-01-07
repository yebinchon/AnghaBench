; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1305.c_msg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1305.c_msg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i8*, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_message*, %struct.spi_transfer*, i8*, i64, i8*, i8*)* @msg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msg_init(%struct.spi_message* %0, %struct.spi_transfer* %1, i8* %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.spi_message*, align 8
  %8 = alloca %struct.spi_transfer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.spi_message* %0, %struct.spi_message** %7, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %14 = call i32 @spi_message_init(%struct.spi_message* %13)
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %16 = call i32 @memset(%struct.spi_transfer* %15, i32 0, i32 48)
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 1
  store i32 1, i32* %21, align 8
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %23 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %24 = call i32 @spi_message_add_tail(%struct.spi_transfer* %22, %struct.spi_message* %23)
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 1
  store %struct.spi_transfer* %26, %struct.spi_transfer** %8, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %10, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %38 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %39 = call i32 @spi_message_add_tail(%struct.spi_transfer* %37, %struct.spi_message* %38)
  ret void
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
