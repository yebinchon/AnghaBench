; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_S24C16_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_S24C16_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_device*, i32*, i32, i32*, i32*)* @S24C16_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @S24C16_write_byte(%struct.sym_device* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.sym_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.sym_device* %0, %struct.sym_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %24, %5
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load %struct.sym_device*, %struct.sym_device** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %11, align 4
  %19 = sub nsw i32 7, %18
  %20 = ashr i32 %17, %19
  %21 = and i32 %20, 1
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @S24C16_do_bit(%struct.sym_device* %16, i32* null, i32 %21, i32* %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load %struct.sym_device*, %struct.sym_device** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @S24C16_read_ack(%struct.sym_device* %28, i32* %29, i32* %30, i32* %31)
  ret void
}

declare dso_local i32 @S24C16_do_bit(%struct.sym_device*, i32*, i32, i32*) #1

declare dso_local i32 @S24C16_read_ack(%struct.sym_device*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
