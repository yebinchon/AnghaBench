; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9320.c_read_devicecode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ili9320.c_read_devicecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fbtft_par.0*, i32*, i32)* }
%struct.fbtft_par.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @read_devicecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_devicecode(%struct.fbtft_par* %0) #0 {
  %2 = alloca %struct.fbtft_par*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [8 x i32], align 16
  store %struct.fbtft_par* %0, %struct.fbtft_par** %2, align 8
  %5 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 32, i1 false)
  %6 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %7 = call i32 @write_reg(%struct.fbtft_par* %6, i32 0)
  %8 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %9 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.fbtft_par.0*, i32*, i32)*, i32 (%struct.fbtft_par.0*, i32*, i32)** %10, align 8
  %12 = load %struct.fbtft_par*, %struct.fbtft_par** %2, align 8
  %13 = bitcast %struct.fbtft_par* %12 to %struct.fbtft_par.0*
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %15 = call i32 %11(%struct.fbtft_par.0* %13, i32* %14, i32 4)
  store i32 %15, i32* %3, align 4
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %17, 8
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %18, %20
  ret i32 %21
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
