; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_set_mode_a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_set_mode_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.s626_private* }
%struct.s626_private = type { i32 }

@S626_CNTSRC_SYSCLK = common dso_local global i32 0, align 4
@S626_CLKMULT_1X = common dso_local global i32 0, align 4
@S626_CNTSRC_ENCODER = common dso_local global i32 0, align 4
@S626_CLKMULT_SPECIAL = common dso_local global i32 0, align 4
@S626_INDXSRC_SOFT = common dso_local global i64 0, align 8
@S626_CRAMSK_INDXSRC_B = common dso_local global i32 0, align 4
@S626_CRAMSK_CNTSRC_B = common dso_local global i32 0, align 4
@S626_CRBMSK_INTCTRL = common dso_local global i32 0, align 4
@S626_CRBMSK_CLKENAB_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32)* @s626_set_mode_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s626_set_mode_a(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.s626_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.s626_private*, %struct.s626_private** %16, align 8
  store %struct.s626_private* %17, %struct.s626_private** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @S626_GET_STD_LOADSRC(i32 %18)
  %20 = call i32 @S626_SET_CRA_LOADSRC_A(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @S626_GET_STD_INDXSRC(i32 %21)
  %23 = call i32 @S626_SET_CRA_INDXSRC_A(i64 %22)
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  %26 = call i32 @S626_SET_CRB_INTRESETCMD(i32 1)
  %27 = call i32 @S626_SET_CRB_INTRESET_A(i32 1)
  %28 = or i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @S626_GET_STD_CLKENAB(i32 %29)
  %31 = call i32 @S626_SET_CRB_CLKENAB_A(i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @S626_GET_STD_INTSRC(i32 %37)
  %39 = call i32 @S626_SET_CRA_INTSRC_A(i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %36, %4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @S626_GET_STD_CLKPOL(i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @S626_GET_STD_ENCMODE(i32 %45)
  switch i32 %46, label %53 [
    i32 129, label %47
    i32 128, label %47
  ]

47:                                               ; preds = %42, %42
  %48 = load i32, i32* @S626_CNTSRC_SYSCLK, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  store i32 1, i32* %14, align 4
  %52 = load i32, i32* @S626_CLKMULT_1X, align 4
  store i32 %52, i32* %13, align 4
  br label %63

53:                                               ; preds = %42
  %54 = load i32, i32* @S626_CNTSRC_ENCODER, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @S626_GET_STD_CLKMULT(i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @S626_CLKMULT_SPECIAL, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @S626_CLKMULT_1X, align 4
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %60, %53
  br label %63

63:                                               ; preds = %62, %47
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @S626_SET_CRA_CNTSRC_A(i32 %64)
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @S626_SET_CRA_CLKPOL_A(i32 %66)
  %68 = or i32 %65, %67
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @S626_SET_CRA_CLKMULT_A(i32 %69)
  %71 = or i32 %68, %70
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @S626_GET_STD_INDXSRC(i32 %74)
  %76 = load i64, i64* @S626_INDXSRC_SOFT, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %63
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @S626_GET_STD_INDXPOL(i32 %79)
  %81 = call i32 @S626_SET_CRA_INDXPOL_A(i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %78, %63
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @S626_OVERMASK(i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @S626_INDXMASK(i32 %90)
  %92 = or i32 %89, %91
  %93 = xor i32 %92, -1
  %94 = load %struct.s626_private*, %struct.s626_private** %9, align 8
  %95 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %87, %84
  %99 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @S626_LP_CRA(i32 %100)
  %102 = load i32, i32* @S626_CRAMSK_INDXSRC_B, align 4
  %103 = load i32, i32* @S626_CRAMSK_CNTSRC_B, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @s626_debi_replace(%struct.comedi_device* %99, i32 %101, i32 %104, i32 %105)
  %107 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @S626_LP_CRB(i32 %108)
  %110 = load i32, i32* @S626_CRBMSK_INTCTRL, align 4
  %111 = load i32, i32* @S626_CRBMSK_CLKENAB_A, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @s626_debi_replace(%struct.comedi_device* %107, i32 %109, i32 %113, i32 %114)
  ret void
}

declare dso_local i32 @S626_SET_CRA_LOADSRC_A(i32) #1

declare dso_local i32 @S626_GET_STD_LOADSRC(i32) #1

declare dso_local i32 @S626_SET_CRA_INDXSRC_A(i64) #1

declare dso_local i64 @S626_GET_STD_INDXSRC(i32) #1

declare dso_local i32 @S626_SET_CRB_INTRESETCMD(i32) #1

declare dso_local i32 @S626_SET_CRB_INTRESET_A(i32) #1

declare dso_local i32 @S626_SET_CRB_CLKENAB_A(i32) #1

declare dso_local i32 @S626_GET_STD_CLKENAB(i32) #1

declare dso_local i32 @S626_SET_CRA_INTSRC_A(i32) #1

declare dso_local i32 @S626_GET_STD_INTSRC(i32) #1

declare dso_local i32 @S626_GET_STD_CLKPOL(i32) #1

declare dso_local i32 @S626_GET_STD_ENCMODE(i32) #1

declare dso_local i32 @S626_GET_STD_CLKMULT(i32) #1

declare dso_local i32 @S626_SET_CRA_CNTSRC_A(i32) #1

declare dso_local i32 @S626_SET_CRA_CLKPOL_A(i32) #1

declare dso_local i32 @S626_SET_CRA_CLKMULT_A(i32) #1

declare dso_local i32 @S626_SET_CRA_INDXPOL_A(i32) #1

declare dso_local i32 @S626_GET_STD_INDXPOL(i32) #1

declare dso_local i32 @S626_OVERMASK(i32) #1

declare dso_local i32 @S626_INDXMASK(i32) #1

declare dso_local i32 @s626_debi_replace(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @S626_LP_CRA(i32) #1

declare dso_local i32 @S626_LP_CRB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
