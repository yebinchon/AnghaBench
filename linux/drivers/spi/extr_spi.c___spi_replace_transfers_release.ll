; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c___spi_replace_transfers_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c___spi_replace_transfers_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_replaced_transfers = type { i64, %struct.TYPE_2__*, i32, i32, i32 (%struct.spi_controller.0*, %struct.spi_message.1*, i8*)* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_controller.0 = type opaque
%struct.spi_message.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_controller*, %struct.spi_message*, i8*)* @__spi_replace_transfers_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__spi_replace_transfers_release(%struct.spi_controller* %0, %struct.spi_message* %1, i8* %2) #0 {
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.spi_replaced_transfers*, align 8
  %8 = alloca i64, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %4, align 8
  store %struct.spi_message* %1, %struct.spi_message** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.spi_replaced_transfers*
  store %struct.spi_replaced_transfers* %10, %struct.spi_replaced_transfers** %7, align 8
  %11 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %7, align 8
  %12 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %11, i32 0, i32 4
  %13 = load i32 (%struct.spi_controller.0*, %struct.spi_message.1*, i8*)*, i32 (%struct.spi_controller.0*, %struct.spi_message.1*, i8*)** %12, align 8
  %14 = icmp ne i32 (%struct.spi_controller.0*, %struct.spi_message.1*, i8*)* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %7, align 8
  %17 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %16, i32 0, i32 4
  %18 = load i32 (%struct.spi_controller.0*, %struct.spi_message.1*, i8*)*, i32 (%struct.spi_controller.0*, %struct.spi_message.1*, i8*)** %17, align 8
  %19 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %20 = bitcast %struct.spi_controller* %19 to %struct.spi_controller.0*
  %21 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %22 = bitcast %struct.spi_message* %21 to %struct.spi_message.1*
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 %18(%struct.spi_controller.0* %20, %struct.spi_message.1* %22, i8* %23)
  br label %25

25:                                               ; preds = %15, %3
  %26 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %7, align 8
  %27 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %26, i32 0, i32 3
  %28 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %7, align 8
  %29 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @list_splice(i32* %27, i32 %30)
  store i64 0, i64* %8, align 8
  br label %32

32:                                               ; preds = %46, %25
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %7, align 8
  %35 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.spi_replaced_transfers*, %struct.spi_replaced_transfers** %7, align 8
  %40 = getelementptr inbounds %struct.spi_replaced_transfers, %struct.spi_replaced_transfers* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @list_del(i32* %44)
  br label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %32

49:                                               ; preds = %32
  ret void
}

declare dso_local i32 @list_splice(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
