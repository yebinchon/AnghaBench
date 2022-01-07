; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_read_fifo_s32u.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_read_fifo_s32u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_msiof_spi_priv = type { i32 }

@RFDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_msiof_spi_priv*, i8*, i32, i32)* @sh_msiof_spi_read_fifo_s32u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_msiof_spi_read_fifo_s32u(%struct.sh_msiof_spi_priv* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sh_msiof_spi_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.sh_msiof_spi_priv* %0, %struct.sh_msiof_spi_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %29, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %5, align 8
  %19 = load i32, i32* @RFDR, align 4
  %20 = call i32 @sh_msiof_read(%struct.sh_msiof_spi_priv* %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %20, %21
  %23 = call i32 @swab32(i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @put_unaligned(i32 %23, i32* %27)
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %13

32:                                               ; preds = %13
  ret void
}

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @sh_msiof_read(%struct.sh_msiof_spi_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
