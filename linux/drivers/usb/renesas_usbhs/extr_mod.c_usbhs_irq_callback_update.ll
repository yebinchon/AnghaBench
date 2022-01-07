; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod.c_usbhs_irq_callback_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod.c_usbhs_irq_callback_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhs_mod = type { i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.usbhs_mod_info = type { i64 }

@INTENB0 = common dso_local global i32 0, align 4
@INTENB1 = common dso_local global i32 0, align 4
@BEMPENB = common dso_local global i32 0, align 4
@BRDYENB = common dso_local global i32 0, align 4
@VBSE = common dso_local global i32 0, align 4
@CTRE = common dso_local global i32 0, align 4
@BEMPE = common dso_local global i32 0, align 4
@BRDYE = common dso_local global i32 0, align 4
@ATTCHE = common dso_local global i32 0, align 4
@DTCHE = common dso_local global i32 0, align 4
@SIGNE = common dso_local global i32 0, align 4
@SACKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhs_irq_callback_update(%struct.usbhs_priv* %0, %struct.usbhs_mod* %1) #0 {
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca %struct.usbhs_mod*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbhs_mod_info*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  store %struct.usbhs_mod* %1, %struct.usbhs_mod** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %9 = call %struct.usbhs_mod_info* @usbhs_priv_to_modinfo(%struct.usbhs_priv* %8)
  store %struct.usbhs_mod_info* %9, %struct.usbhs_mod_info** %7, align 8
  %10 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %11 = load i32, i32* @INTENB0, align 4
  %12 = call i32 @usbhs_write(%struct.usbhs_priv* %10, i32 %11, i32 0)
  %13 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %14 = call i64 @usbhs_mod_is_host(%struct.usbhs_priv* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %18 = load i32, i32* @INTENB1, align 4
  %19 = call i32 @usbhs_write(%struct.usbhs_priv* %17, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %22 = load i32, i32* @BEMPENB, align 4
  %23 = call i32 @usbhs_write(%struct.usbhs_priv* %21, i32 %22, i32 0)
  %24 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %25 = load i32, i32* @BRDYENB, align 4
  %26 = call i32 @usbhs_write(%struct.usbhs_priv* %24, i32 %25, i32 0)
  %27 = load %struct.usbhs_mod_info*, %struct.usbhs_mod_info** %7, align 8
  %28 = getelementptr inbounds %struct.usbhs_mod_info, %struct.usbhs_mod_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i32, i32* @VBSE, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %20
  %36 = load %struct.usbhs_mod*, %struct.usbhs_mod** %4, align 8
  %37 = icmp ne %struct.usbhs_mod* %36, null
  br i1 %37, label %38, label %129

38:                                               ; preds = %35
  %39 = load %struct.usbhs_mod*, %struct.usbhs_mod** %4, align 8
  %40 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @CTRE, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.usbhs_mod*, %struct.usbhs_mod** %4, align 8
  %49 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.usbhs_mod*, %struct.usbhs_mod** %4, align 8
  %54 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %59 = load i32, i32* @BEMPENB, align 4
  %60 = load %struct.usbhs_mod*, %struct.usbhs_mod** %4, align 8
  %61 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @usbhs_write(%struct.usbhs_priv* %58, i32 %59, i32 %62)
  %64 = load i32, i32* @BEMPE, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %57, %52, %47
  %68 = load %struct.usbhs_mod*, %struct.usbhs_mod** %4, align 8
  %69 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = load %struct.usbhs_mod*, %struct.usbhs_mod** %4, align 8
  %74 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %79 = load i32, i32* @BRDYENB, align 4
  %80 = load %struct.usbhs_mod*, %struct.usbhs_mod** %4, align 8
  %81 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @usbhs_write(%struct.usbhs_priv* %78, i32 %79, i32 %82)
  %84 = load i32, i32* @BRDYE, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %77, %72, %67
  %88 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %89 = call i64 @usbhs_mod_is_host(%struct.usbhs_priv* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %128

91:                                               ; preds = %87
  %92 = load %struct.usbhs_mod*, %struct.usbhs_mod** %4, align 8
  %93 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* @ATTCHE, align 4
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %96, %91
  %101 = load %struct.usbhs_mod*, %struct.usbhs_mod** %4, align 8
  %102 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @DTCHE, align 4
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.usbhs_mod*, %struct.usbhs_mod** %4, align 8
  %111 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @SIGNE, align 4
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %114, %109
  %119 = load %struct.usbhs_mod*, %struct.usbhs_mod** %4, align 8
  %120 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* @SACKE, align 4
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %123, %118
  br label %128

128:                                              ; preds = %127, %87
  br label %129

129:                                              ; preds = %128, %35
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %134 = load i32, i32* @INTENB0, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @usbhs_write(%struct.usbhs_priv* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %129
  %138 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %139 = call i64 @usbhs_mod_is_host(%struct.usbhs_priv* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %146 = load i32, i32* @INTENB1, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @usbhs_write(%struct.usbhs_priv* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %141, %137
  ret void
}

declare dso_local %struct.usbhs_mod_info* @usbhs_priv_to_modinfo(%struct.usbhs_priv*) #1

declare dso_local i32 @usbhs_write(%struct.usbhs_priv*, i32, i32) #1

declare dso_local i64 @usbhs_mod_is_host(%struct.usbhs_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
