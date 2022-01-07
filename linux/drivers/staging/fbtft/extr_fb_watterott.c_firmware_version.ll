; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_watterott.c_firmware_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_watterott.c_firmware_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fbtft_par.0*, i8*, i32)* }
%struct.fbtft_par.0 = type opaque

@CMD_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @firmware_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firmware_version(%struct.fbtft_par* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fbtft_par*, align 8
  %4 = alloca [4 x i8], align 1
  store %struct.fbtft_par* %0, %struct.fbtft_par** %3, align 8
  %5 = bitcast [4 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %5, i8 0, i64 4, i1 false)
  %6 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %7 = load i32, i32* @CMD_VERSION, align 4
  %8 = call i32 @write_reg(%struct.fbtft_par* %6, i32 %7)
  %9 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %10 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.fbtft_par.0*, i8*, i32)*, i32 (%struct.fbtft_par.0*, i8*, i32)** %11, align 8
  %13 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %14 = bitcast %struct.fbtft_par* %13 to %struct.fbtft_par.0*
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %16 = call i32 %12(%struct.fbtft_par.0* %14, i8* %15, i32 4)
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 46
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

22:                                               ; preds = %1
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = sub nsw i32 %25, 48
  %27 = shl i32 %26, 8
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = sub nsw i32 %30, 48
  %32 = shl i32 %31, 4
  %33 = or i32 %27, %32
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = sub nsw i32 %36, 48
  %38 = or i32 %33, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %22, %21
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
