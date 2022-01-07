; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_calculate_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_calculate_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hs_header = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.mvumi_hs_header*, i16)* @mvumi_calculate_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mvumi_calculate_checksum(%struct.mvumi_hs_header* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.mvumi_hs_header*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.mvumi_hs_header* %0, %struct.mvumi_hs_header** %3, align 8
  store i16 %1, i16* %4, align 2
  store i8 0, i8* %6, align 1
  %8 = load %struct.mvumi_hs_header*, %struct.mvumi_hs_header** %3, align 8
  %9 = getelementptr inbounds %struct.mvumi_hs_header, %struct.mvumi_hs_header* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %5, align 8
  store i8 0, i8* %7, align 1
  br label %12

12:                                               ; preds = %28, %2
  %13 = load i8, i8* %7, align 1
  %14 = zext i8 %13 to i32
  %15 = load i16, i16* %4, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %6, align 1
  %23 = zext i8 %22 to i32
  %24 = xor i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %6, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %18
  %29 = load i8, i8* %7, align 1
  %30 = add i8 %29, 1
  store i8 %30, i8* %7, align 1
  br label %12

31:                                               ; preds = %12
  %32 = load i8, i8* %6, align 1
  ret i8 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
