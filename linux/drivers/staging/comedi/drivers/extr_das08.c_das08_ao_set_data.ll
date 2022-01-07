; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das08.c_das08_ao_set_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das08.c_das08_ao_set_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.das08_board_struct* }
%struct.das08_board_struct = type { i64 }

@DAS08JR_AO_UPDATE_REG = common dso_local global i64 0, align 8
@DAS08AOX_AO_UPDATE_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @das08_ao_set_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das08_ao_set_data(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.das08_board_struct*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 1
  %12 = load %struct.das08_board_struct*, %struct.das08_board_struct** %11, align 8
  store %struct.das08_board_struct* %12, %struct.das08_board_struct** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 255
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %8, align 1
  %16 = load i32, i32* %6, align 4
  %17 = lshr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %9, align 1
  %20 = load %struct.das08_board_struct*, %struct.das08_board_struct** %7, align 8
  %21 = getelementptr inbounds %struct.das08_board_struct, %struct.das08_board_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %3
  %25 = load i8, i8* %8, align 1
  %26 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @DAS08JR_AO_LSB_REG(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = call i32 @outb(i8 zeroext %25, i64 %31)
  %33 = load i8, i8* %9, align 1
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @DAS08JR_AO_MSB_REG(i32 %37)
  %39 = add nsw i64 %36, %38
  %40 = call i32 @outb(i8 zeroext %33, i64 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DAS08JR_AO_UPDATE_REG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @inb(i64 %45)
  br label %70

47:                                               ; preds = %3
  %48 = load i8, i8* %8, align 1
  %49 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @DAS08AOX_AO_LSB_REG(i32 %52)
  %54 = add nsw i64 %51, %53
  %55 = call i32 @outb(i8 zeroext %48, i64 %54)
  %56 = load i8, i8* %9, align 1
  %57 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @DAS08AOX_AO_MSB_REG(i32 %60)
  %62 = add nsw i64 %59, %61
  %63 = call i32 @outb(i8 zeroext %56, i64 %62)
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DAS08AOX_AO_UPDATE_REG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @inb(i64 %68)
  br label %70

70:                                               ; preds = %47, %24
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i64 @DAS08JR_AO_LSB_REG(i32) #1

declare dso_local i64 @DAS08JR_AO_MSB_REG(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i64 @DAS08AOX_AO_LSB_REG(i32) #1

declare dso_local i64 @DAS08AOX_AO_MSB_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
