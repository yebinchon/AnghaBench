; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_set_mode_b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_set_mode_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.s626_private* }
%struct.s626_private = type { i32 }

@S626_CNTSRC_SYSCLK = common dso_local global i32 0, align 4
@S626_CLKMULT_1X = common dso_local global i32 0, align 4
@S626_CLKMULT_SPECIAL = common dso_local global i32 0, align 4
@S626_CNTSRC_ENCODER = common dso_local global i32 0, align 4
@S626_INDXSRC_SOFT = common dso_local global i64 0, align 8
@S626_CRAMSK_INDXSRC_B = common dso_local global i32 0, align 4
@S626_CRAMSK_CNTSRC_B = common dso_local global i32 0, align 4
@S626_CRBMSK_CLKENAB_A = common dso_local global i32 0, align 4
@S626_CRBMSK_LATCHSRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32)* @s626_set_mode_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s626_set_mode_b(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i64 @S626_GET_STD_INDXSRC(i32 %18)
  %20 = call i32 @S626_SET_CRA_INDXSRC_B(i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = call i32 @S626_SET_CRB_INTRESETCMD(i32 1)
  %22 = call i32 @S626_SET_CRB_INTRESET_B(i32 1)
  %23 = or i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @S626_GET_STD_CLKENAB(i32 %24)
  %26 = call i32 @S626_SET_CRB_CLKENAB_B(i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @S626_GET_STD_LOADSRC(i32 %29)
  %31 = call i32 @S626_SET_CRB_LOADSRC_B(i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @S626_GET_STD_INTSRC(i32 %37)
  %39 = call i32 @S626_SET_CRB_INTSRC_B(i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %36, %4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @S626_GET_STD_CLKPOL(i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @S626_GET_STD_ENCMODE(i32 %45)
  switch i32 %46, label %59 [
    i32 128, label %47
    i32 129, label %53
  ]

47:                                               ; preds = %42
  %48 = load i32, i32* @S626_CNTSRC_SYSCLK, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  store i32 1, i32* %14, align 4
  %52 = load i32, i32* @S626_CLKMULT_1X, align 4
  store i32 %52, i32* %13, align 4
  br label %69

53:                                               ; preds = %42
  %54 = load i32, i32* @S626_CNTSRC_SYSCLK, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %12, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %12, align 4
  store i32 1, i32* %14, align 4
  %58 = load i32, i32* @S626_CLKMULT_SPECIAL, align 4
  store i32 %58, i32* %13, align 4
  br label %69

59:                                               ; preds = %42
  %60 = load i32, i32* @S626_CNTSRC_ENCODER, align 4
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @S626_GET_STD_CLKMULT(i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @S626_CLKMULT_SPECIAL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @S626_CLKMULT_1X, align 4
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %66, %59
  br label %69

69:                                               ; preds = %68, %53, %47
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @S626_SET_CRA_CNTSRC_B(i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @S626_SET_CRB_CLKPOL_B(i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @S626_SET_CRB_CLKMULT_B(i32 %76)
  %78 = or i32 %75, %77
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @S626_GET_STD_INDXSRC(i32 %81)
  %83 = load i64, i64* @S626_INDXSRC_SOFT, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %69
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @S626_GET_STD_INDXPOL(i32 %86)
  %88 = call i32 @S626_SET_CRB_INDXPOL_B(i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %85, %69
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @S626_OVERMASK(i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @S626_INDXMASK(i32 %97)
  %99 = or i32 %96, %98
  %100 = xor i32 %99, -1
  %101 = load %struct.s626_private*, %struct.s626_private** %9, align 8
  %102 = getelementptr inbounds %struct.s626_private, %struct.s626_private* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %94, %91
  %106 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @S626_LP_CRA(i32 %107)
  %109 = load i32, i32* @S626_CRAMSK_INDXSRC_B, align 4
  %110 = load i32, i32* @S626_CRAMSK_CNTSRC_B, align 4
  %111 = or i32 %109, %110
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @s626_debi_replace(%struct.comedi_device* %106, i32 %108, i32 %112, i32 %113)
  %115 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @S626_LP_CRB(i32 %116)
  %118 = load i32, i32* @S626_CRBMSK_CLKENAB_A, align 4
  %119 = load i32, i32* @S626_CRBMSK_LATCHSRC, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @s626_debi_replace(%struct.comedi_device* %115, i32 %117, i32 %120, i32 %121)
  ret void
}

declare dso_local i32 @S626_SET_CRA_INDXSRC_B(i64) #1

declare dso_local i64 @S626_GET_STD_INDXSRC(i32) #1

declare dso_local i32 @S626_SET_CRB_INTRESETCMD(i32) #1

declare dso_local i32 @S626_SET_CRB_INTRESET_B(i32) #1

declare dso_local i32 @S626_SET_CRB_CLKENAB_B(i32) #1

declare dso_local i32 @S626_GET_STD_CLKENAB(i32) #1

declare dso_local i32 @S626_SET_CRB_LOADSRC_B(i32) #1

declare dso_local i32 @S626_GET_STD_LOADSRC(i32) #1

declare dso_local i32 @S626_SET_CRB_INTSRC_B(i32) #1

declare dso_local i32 @S626_GET_STD_INTSRC(i32) #1

declare dso_local i32 @S626_GET_STD_CLKPOL(i32) #1

declare dso_local i32 @S626_GET_STD_ENCMODE(i32) #1

declare dso_local i32 @S626_GET_STD_CLKMULT(i32) #1

declare dso_local i32 @S626_SET_CRA_CNTSRC_B(i32) #1

declare dso_local i32 @S626_SET_CRB_CLKPOL_B(i32) #1

declare dso_local i32 @S626_SET_CRB_CLKMULT_B(i32) #1

declare dso_local i32 @S626_SET_CRB_INDXPOL_B(i32) #1

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
