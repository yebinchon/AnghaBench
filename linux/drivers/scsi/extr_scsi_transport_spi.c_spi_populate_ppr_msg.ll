; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_spi_populate_ppr_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_spi_populate_ppr_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXTENDED_MESSAGE = common dso_local global i8 0, align 1
@EXTENDED_PPR = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_populate_ppr_msg(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i8, i8* @EXTENDED_MESSAGE, align 1
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %11, i8* %13, align 1
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 6, i8* %15, align 1
  %16 = load i8, i8* @EXTENDED_PPR, align 1
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  store i8 %16, i8* %18, align 1
  %19 = load i32, i32* %7, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 3
  store i8 %20, i8* %22, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 4
  store i8 0, i8* %24, align 1
  %25 = load i32, i32* %8, align 4
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 5
  store i8 %26, i8* %28, align 1
  %29 = load i32, i32* %9, align 4
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 6
  store i8 %30, i8* %32, align 1
  %33 = load i32, i32* %10, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 7
  store i8 %34, i8* %36, align 1
  ret i32 8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
