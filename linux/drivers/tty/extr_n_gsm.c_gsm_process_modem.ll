; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_process_modem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_process_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.gsm_dlci = type { i32, i32, i32 }

@MDM_FC = common dso_local global i32 0, align 4
@MDM_RTR = common dso_local global i32 0, align 4
@MDM_RTC = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@MDM_IC = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@MDM_DV = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.gsm_dlci*, i32, i32)* @gsm_process_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_process_modem(%struct.tty_struct* %0, %struct.gsm_dlci* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.gsm_dlci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.gsm_dlci* %1, %struct.gsm_dlci** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 127
  store i32 %16, i32* %7, align 4
  br label %23

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 127
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 7
  %22 = and i32 %21, 127
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %17, %14
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MDM_FC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @MDM_RTR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %23
  %35 = phi i1 [ true, %23 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %41 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %46 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %61

47:                                               ; preds = %39, %34
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %52 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %57 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %59 = call i32 @gsm_dlci_data_kick(%struct.gsm_dlci* %58)
  br label %60

60:                                               ; preds = %55, %50, %47
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @MDM_RTC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @TIOCM_DSR, align 4
  %68 = load i32, i32* @TIOCM_DTR, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @MDM_RTR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @TIOCM_RTS, align 4
  %79 = load i32, i32* @TIOCM_CTS, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %77, %72
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @MDM_IC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @TIOCM_RI, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @MDM_DV, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @TIOCM_CD, align 4
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %103 = icmp ne %struct.tty_struct* %102, null
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @TIOCM_CD, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %104
  %110 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %111 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @TIOCM_CD, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %109
  %117 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %118 = call i32 @C_CLOCAL(%struct.tty_struct* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %122 = call i32 @tty_hangup(%struct.tty_struct* %121)
  br label %123

123:                                              ; preds = %120, %116
  br label %124

124:                                              ; preds = %123, %109, %104
  br label %125

125:                                              ; preds = %124, %101
  %126 = load i32, i32* %10, align 4
  %127 = and i32 %126, 1
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %131 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %130, i32 0, i32 2
  %132 = load i32, i32* @TTY_BREAK, align 4
  %133 = call i32 @tty_insert_flip_char(i32* %131, i32 0, i32 %132)
  br label %134

134:                                              ; preds = %129, %125
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.gsm_dlci*, %struct.gsm_dlci** %6, align 8
  %137 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  ret void
}

declare dso_local i32 @gsm_dlci_data_kick(%struct.gsm_dlci*) #1

declare dso_local i32 @C_CLOCAL(%struct.tty_struct*) #1

declare dso_local i32 @tty_hangup(%struct.tty_struct*) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
