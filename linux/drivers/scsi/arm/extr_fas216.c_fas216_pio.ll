; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.scsi_pointer }
%struct.scsi_pointer = type { i64 }

@DMA_OUT = common dso_local global i64 0, align 8
@REG_FF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64)* @fas216_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fas216_pio(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.scsi_pointer*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store %struct.scsi_pointer* %8, %struct.scsi_pointer** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = call i32 @fas216_checkmagic(%struct.TYPE_8__* %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @DMA_OUT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = load i32, i32* @REG_FF, align 4
  %17 = load %struct.scsi_pointer*, %struct.scsi_pointer** %5, align 8
  %18 = call i32 @get_next_SCp_byte(%struct.scsi_pointer* %17)
  %19 = call i32 @fas216_writeb(%struct.TYPE_8__* %15, i32 %16, i32 %18)
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.scsi_pointer*, %struct.scsi_pointer** %5, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = load i32, i32* @REG_FF, align 4
  %24 = call i32 @fas216_readb(%struct.TYPE_8__* %22, i32 %23)
  %25 = call i32 @put_next_SCp_byte(%struct.scsi_pointer* %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.scsi_pointer*, %struct.scsi_pointer** %5, align 8
  %28 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.scsi_pointer*, %struct.scsi_pointer** %5, align 8
  %33 = call i32 @next_SCp(%struct.scsi_pointer* %32)
  br label %34

34:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @fas216_checkmagic(%struct.TYPE_8__*) #1

declare dso_local i32 @fas216_writeb(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @get_next_SCp_byte(%struct.scsi_pointer*) #1

declare dso_local i32 @put_next_SCp_byte(%struct.scsi_pointer*, i32) #1

declare dso_local i32 @fas216_readb(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @next_SCp(%struct.scsi_pointer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
