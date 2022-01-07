; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_set_int_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_set_int_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.s626_private* }
%struct.s626_private = type { i32 }

@S626_CRBMSK_INTCTRL = common dso_local global i32 0, align 4
@S626_CRAMSK_INTSRC_A = common dso_local global i32 0, align 4
@S626_CRBMSK_INTSRC_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @s626_set_int_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s626_set_int_src(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.s626_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.s626_private*, %struct.s626_private** %12, align 8
  store %struct.s626_private* %13, %struct.s626_private** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @S626_LP_CRA(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @S626_LP_CRB(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @S626_CRBMSK_INTCTRL, align 4
  %24 = xor i32 %23, -1
  %25 = call i32 @S626_SET_CRB_INTRESETCMD(i32 1)
  %26 = call i32 @S626_SET_CRB_INTRESET_A(i32 1)
  %27 = or i32 %25, %26
  %28 = call i32 @s626_debi_replace(%struct.comedi_device* %21, i32 %22, i32 %24, i32 %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @S626_CRAMSK_INTSRC_A, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @S626_SET_CRA_INTSRC_A(i32 %33)
  %35 = call i32 @s626_debi_replace(%struct.comedi_device* %29, i32 %30, i32 %32, i32 %34)
  br label %62

36:                                               ; preds = %3
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @s626_debi_read(%struct.comedi_device* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @S626_CRBMSK_INTCTRL, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @S626_SET_CRB_INTRESETCMD(i32 1)
  %48 = or i32 %46, %47
  %49 = call i32 @S626_SET_CRB_INTRESET_B(i32 1)
  %50 = or i32 %48, %49
  %51 = call i32 @s626_debi_write(%struct.comedi_device* %44, i32 %45, i32 %50)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @S626_CRBMSK_INTSRC_B, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @S626_SET_CRB_INTSRC_B(i32 %58)
  %60 = or i32 %57, %59
  %61 = call i32 @s626_debi_write(%struct.comedi_device* %52, i32 %53, i32 %60)
  br label %62

62:                                               ; preds = %36, %20
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @S626_OVERMASK(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @S626_INDXMASK(i32 %65)
  %67 = or i32 %64, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.s626_private*, %struct.s626_private** %7, align 8
  %70 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %6, align 4
  switch i32 %73, label %75 [
    i32 0, label %74
    i32 1, label %76
    i32 2, label %83
    i32 3, label %90
  ]

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %62, %74
  br label %100

76:                                               ; preds = %62
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @S626_OVERMASK(i32 %77)
  %79 = load %struct.s626_private*, %struct.s626_private** %7, align 8
  %80 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %100

83:                                               ; preds = %62
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @S626_INDXMASK(i32 %84)
  %86 = load %struct.s626_private*, %struct.s626_private** %7, align 8
  %87 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %100

90:                                               ; preds = %62
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @S626_OVERMASK(i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @S626_INDXMASK(i32 %93)
  %95 = or i32 %92, %94
  %96 = load %struct.s626_private*, %struct.s626_private** %7, align 8
  %97 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %90, %83, %76, %75
  ret void
}

declare dso_local i32 @S626_LP_CRA(i32) #1

declare dso_local i32 @S626_LP_CRB(i32) #1

declare dso_local i32 @s626_debi_replace(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @S626_SET_CRB_INTRESETCMD(i32) #1

declare dso_local i32 @S626_SET_CRB_INTRESET_A(i32) #1

declare dso_local i32 @S626_SET_CRA_INTSRC_A(i32) #1

declare dso_local i32 @s626_debi_read(%struct.comedi_device*, i32) #1

declare dso_local i32 @s626_debi_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @S626_SET_CRB_INTRESET_B(i32) #1

declare dso_local i32 @S626_SET_CRB_INTSRC_B(i32) #1

declare dso_local i32 @S626_OVERMASK(i32) #1

declare dso_local i32 @S626_INDXMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
