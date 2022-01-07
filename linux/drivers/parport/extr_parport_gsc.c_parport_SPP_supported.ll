; ModuleID = '/home/carl/AnghaBench/linux/drivers/parport/extr_parport_gsc.c_parport_SPP_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parport/extr_parport_gsc.c_parport_SPP_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@PARPORT_MODE_PCSPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*)* @parport_SPP_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_SPP_supported(%struct.parport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parport*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %3, align 8
  %6 = load %struct.parport*, %struct.parport** %3, align 8
  %7 = call i32 @clear_epp_timeout(%struct.parport* %6)
  store i8 12, i8* %5, align 1
  %8 = load i8, i8* %5, align 1
  %9 = zext i8 %8 to i32
  %10 = load %struct.parport*, %struct.parport** %3, align 8
  %11 = call i32 @CONTROL(%struct.parport* %10)
  %12 = call i32 @parport_writeb(i32 %9, i32 %11)
  %13 = load %struct.parport*, %struct.parport** %3, align 8
  %14 = call i32 @CONTROL(%struct.parport* %13)
  %15 = call zeroext i8 @parport_readb(i32 %14)
  store i8 %15, i8* %4, align 1
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 15
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  store i8 14, i8* %5, align 1
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = load %struct.parport*, %struct.parport** %3, align 8
  %26 = call i32 @CONTROL(%struct.parport* %25)
  %27 = call i32 @parport_writeb(i32 %24, i32 %26)
  %28 = load %struct.parport*, %struct.parport** %3, align 8
  %29 = call i32 @CONTROL(%struct.parport* %28)
  %30 = call zeroext i8 @parport_readb(i32 %29)
  store i8 %30, i8* %4, align 1
  %31 = load %struct.parport*, %struct.parport** %3, align 8
  %32 = call i32 @CONTROL(%struct.parport* %31)
  %33 = call i32 @parport_writeb(i32 12, i32 %32)
  %34 = load i8, i8* %4, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 15
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %22
  %41 = load i32, i32* @PARPORT_MODE_PCSPP, align 4
  store i32 %41, i32* %2, align 4
  br label %69

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42, %1
  store i8 -86, i8* %5, align 1
  %44 = load %struct.parport*, %struct.parport** %3, align 8
  %45 = load i8, i8* %5, align 1
  %46 = call i32 @parport_gsc_write_data(%struct.parport* %44, i8 zeroext %45)
  %47 = load %struct.parport*, %struct.parport** %3, align 8
  %48 = call zeroext i8 @parport_gsc_read_data(%struct.parport* %47)
  store i8 %48, i8* %4, align 1
  %49 = load i8, i8* %4, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* %5, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %43
  store i8 85, i8* %5, align 1
  %55 = load %struct.parport*, %struct.parport** %3, align 8
  %56 = load i8, i8* %5, align 1
  %57 = call i32 @parport_gsc_write_data(%struct.parport* %55, i8 zeroext %56)
  %58 = load %struct.parport*, %struct.parport** %3, align 8
  %59 = call zeroext i8 @parport_gsc_read_data(%struct.parport* %58)
  store i8 %59, i8* %4, align 1
  %60 = load i8, i8* %4, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* %5, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* @PARPORT_MODE_PCSPP, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %43
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %65, %40
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @clear_epp_timeout(%struct.parport*) #1

declare dso_local i32 @parport_writeb(i32, i32) #1

declare dso_local i32 @CONTROL(%struct.parport*) #1

declare dso_local zeroext i8 @parport_readb(i32) #1

declare dso_local i32 @parport_gsc_write_data(%struct.parport*, i8 zeroext) #1

declare dso_local zeroext i8 @parport_gsc_read_data(%struct.parport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
