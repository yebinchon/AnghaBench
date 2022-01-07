; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_fifo_write_block_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_ip32.c_parport_ip32_fifo_write_block_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.parport_ip32_private* }
%struct.parport_ip32_private = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PARPORT_IP32_IRQ_HERE = common dso_local global i32 0, align 4
@PARPORT_IRQ_NONE = common dso_local global i64 0, align 8
@PARPORT_IP32_IRQ_FWD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.parport*, i8*, i64)* @parport_ip32_fifo_write_block_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parport_ip32_fifo_write_block_pio(%struct.parport* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.parport*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.parport_ip32_private*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.parport* %0, %struct.parport** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.parport*, %struct.parport** %4, align 8
  %12 = getelementptr inbounds %struct.parport, %struct.parport* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %14, align 8
  store %struct.parport_ip32_private* %15, %struct.parport_ip32_private** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i32, i32* @PARPORT_IP32_IRQ_HERE, align 4
  %20 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %7, align 8
  %21 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %81, %3
  %23 = load i64, i64* %9, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %82

25:                                               ; preds = %22
  %26 = load %struct.parport*, %struct.parport** %4, align 8
  %27 = getelementptr inbounds %struct.parport, %struct.parport* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PARPORT_IRQ_NONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.parport*, %struct.parport** %4, align 8
  %33 = call i32 @parport_ip32_fwp_wait_polling(%struct.parport* %32)
  br label %37

34:                                               ; preds = %25
  %35 = load %struct.parport*, %struct.parport** %4, align 8
  %36 = call i32 @parport_ip32_fwp_wait_interrupt(%struct.parport* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32 [ %33, %31 ], [ %36, %34 ]
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %82

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* %9, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i64, i64* %9, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %7, align 8
  %57 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @writeb(i32 %55, i32 %59)
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %9, align 8
  br label %81

65:                                               ; preds = %50
  %66 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %7, align 8
  %67 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @writesb(i32 %69, i32* %70, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %8, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %9, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %9, align 8
  br label %81

81:                                               ; preds = %65, %53
  br label %22

82:                                               ; preds = %41, %22
  %83 = load i32, i32* @PARPORT_IP32_IRQ_FWD, align 4
  %84 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %7, align 8
  %85 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %9, align 8
  %88 = sub i64 %86, %87
  ret i64 %88
}

declare dso_local i32 @parport_ip32_fwp_wait_polling(%struct.parport*) #1

declare dso_local i32 @parport_ip32_fwp_wait_interrupt(%struct.parport*) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @writesb(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
