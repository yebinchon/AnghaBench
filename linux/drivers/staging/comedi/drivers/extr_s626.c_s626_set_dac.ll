; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_set_dac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_set_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.s626_private* }
%struct.s626_private = type { i32 }

@S626_WS1 = common dso_local global i32 0, align 4
@S626_WS2 = common dso_local global i32 0, align 4
@S626_XSD2 = common dso_local global i32 0, align 4
@S626_XFIFO_1 = common dso_local global i32 0, align 4
@S626_XFIFO_0 = common dso_local global i32 0, align 4
@S626_XFIFO_3 = common dso_local global i32 0, align 4
@S626_WS3 = common dso_local global i32 0, align 4
@S626_XFIFO_2 = common dso_local global i32 0, align 4
@S626_EOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i64)* @s626_set_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_set_dac(%struct.comedi_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.s626_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.s626_private*, %struct.s626_private** %12, align 8
  store %struct.s626_private* %13, %struct.s626_private** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 1, %14
  store i32 %15, i32* %8, align 4
  %16 = load i64, i64* %6, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.s626_private*, %struct.s626_private** %7, align 8
  %23 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.s626_private*, %struct.s626_private** %7, align 8
  %30 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %26, %18
  %34 = load i64, i64* %6, align 8
  %35 = trunc i64 %34 to i32
  %36 = icmp sgt i32 %35, 8191
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i64 8191, i64* %6, align 8
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @S626_WS1, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @S626_WS2, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @S626_XSD2, align 4
  %49 = load i32, i32* @S626_XFIFO_1, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @S626_VECTPORT(i32 2)
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load i32, i32* @S626_XSD2, align 4
  %60 = load i32, i32* @S626_XFIFO_0, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @S626_VECTPORT(i32 3)
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load i32, i32* @S626_XSD2, align 4
  %71 = load i32, i32* @S626_XFIFO_3, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @S626_WS3, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @S626_VECTPORT(i32 4)
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  %81 = load i32, i32* @S626_XSD2, align 4
  %82 = load i32, i32* @S626_XFIFO_2, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @S626_WS3, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @S626_EOS, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @S626_VECTPORT(i32 5)
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %87, i64 %92)
  store i32 251658240, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, 16384
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, 1
  %98 = shl i32 %97, 15
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i64, i64* %6, align 8
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @s626_send_dac(%struct.comedi_device* %105, i32 %106)
  ret i32 %107
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @S626_VECTPORT(i32) #1

declare dso_local i32 @s626_send_dac(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
