; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmtty_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmtty_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i32, %struct.gsm_dlci**, i64 }
%struct.gsm_dlci = type { i64, i32 }
%struct.tty_driver = type { i32 }
%struct.tty_struct = type { i32, %struct.gsm_dlci* }

@MAX_MUX = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@gsm_mux = common dso_local global %struct.gsm_mux** null, align 8
@EUNATCH = common dso_local global i32 0, align 4
@ECHRNG = common dso_local global i32 0, align 4
@EL2HLT = common dso_local global i32 0, align 4
@DLCI_OPEN = common dso_local global i64 0, align 8
@EL2NSYNC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*)* @gsmtty_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsmtty_install(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.gsm_mux*, align 8
  %7 = alloca %struct.gsm_dlci*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @mux_line_to_num(i32 %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 63
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @MAX_MUX, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %142

25:                                               ; preds = %2
  %26 = load %struct.gsm_mux**, %struct.gsm_mux*** @gsm_mux, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.gsm_mux*, %struct.gsm_mux** %26, i64 %28
  %30 = load %struct.gsm_mux*, %struct.gsm_mux** %29, align 8
  %31 = icmp eq %struct.gsm_mux* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EUNATCH, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %142

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp ugt i32 %39, 61
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %35
  %42 = load i32, i32* @ECHRNG, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %142

44:                                               ; preds = %38
  %45 = load %struct.gsm_mux**, %struct.gsm_mux*** @gsm_mux, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.gsm_mux*, %struct.gsm_mux** %45, i64 %47
  %49 = load %struct.gsm_mux*, %struct.gsm_mux** %48, align 8
  store %struct.gsm_mux* %49, %struct.gsm_mux** %6, align 8
  %50 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %51 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @EL2HLT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %142

57:                                               ; preds = %44
  %58 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %59 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %58, i32 0, i32 0
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %62 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %61, i32 0, i32 1
  %63 = load %struct.gsm_dlci**, %struct.gsm_dlci*** %62, align 8
  %64 = getelementptr inbounds %struct.gsm_dlci*, %struct.gsm_dlci** %63, i64 0
  %65 = load %struct.gsm_dlci*, %struct.gsm_dlci** %64, align 8
  %66 = icmp ne %struct.gsm_dlci* %65, null
  br i1 %66, label %67, label %83

67:                                               ; preds = %57
  %68 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %69 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %68, i32 0, i32 1
  %70 = load %struct.gsm_dlci**, %struct.gsm_dlci*** %69, align 8
  %71 = getelementptr inbounds %struct.gsm_dlci*, %struct.gsm_dlci** %70, i64 0
  %72 = load %struct.gsm_dlci*, %struct.gsm_dlci** %71, align 8
  %73 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DLCI_OPEN, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %79 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* @EL2NSYNC, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %142

83:                                               ; preds = %67, %57
  %84 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %85 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %84, i32 0, i32 1
  %86 = load %struct.gsm_dlci**, %struct.gsm_dlci*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.gsm_dlci*, %struct.gsm_dlci** %86, i64 %88
  %90 = load %struct.gsm_dlci*, %struct.gsm_dlci** %89, align 8
  store %struct.gsm_dlci* %90, %struct.gsm_dlci** %7, align 8
  %91 = load %struct.gsm_dlci*, %struct.gsm_dlci** %7, align 8
  %92 = icmp eq %struct.gsm_dlci* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  store i32 1, i32* %10, align 4
  %94 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call %struct.gsm_dlci* @gsm_dlci_alloc(%struct.gsm_mux* %94, i32 %95)
  store %struct.gsm_dlci* %96, %struct.gsm_dlci** %7, align 8
  br label %97

97:                                               ; preds = %93, %83
  %98 = load %struct.gsm_dlci*, %struct.gsm_dlci** %7, align 8
  %99 = icmp eq %struct.gsm_dlci* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %102 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %142

106:                                              ; preds = %97
  %107 = load %struct.gsm_dlci*, %struct.gsm_dlci** %7, align 8
  %108 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %107, i32 0, i32 1
  %109 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %110 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %111 = call i32 @tty_port_install(i32* %108, %struct.tty_driver* %109, %struct.tty_struct* %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %106
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.gsm_dlci*, %struct.gsm_dlci** %7, align 8
  %119 = call i32 @dlci_put(%struct.gsm_dlci* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %122 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %3, align 4
  br label %142

125:                                              ; preds = %106
  %126 = load %struct.gsm_dlci*, %struct.gsm_dlci** %7, align 8
  %127 = call i32 @dlci_get(%struct.gsm_dlci* %126)
  %128 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %129 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %128, i32 0, i32 1
  %130 = load %struct.gsm_dlci**, %struct.gsm_dlci*** %129, align 8
  %131 = getelementptr inbounds %struct.gsm_dlci*, %struct.gsm_dlci** %130, i64 0
  %132 = load %struct.gsm_dlci*, %struct.gsm_dlci** %131, align 8
  %133 = call i32 @dlci_get(%struct.gsm_dlci* %132)
  %134 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %135 = call i32 @mux_get(%struct.gsm_mux* %134)
  %136 = load %struct.gsm_dlci*, %struct.gsm_dlci** %7, align 8
  %137 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %138 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %137, i32 0, i32 1
  store %struct.gsm_dlci* %136, %struct.gsm_dlci** %138, align 8
  %139 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %140 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %139, i32 0, i32 0
  %141 = call i32 @mutex_unlock(i32* %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %125, %120, %100, %77, %54, %41, %32, %22
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @mux_line_to_num(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.gsm_dlci* @gsm_dlci_alloc(%struct.gsm_mux*, i32) #1

declare dso_local i32 @tty_port_install(i32*, %struct.tty_driver*, %struct.tty_struct*) #1

declare dso_local i32 @dlci_put(%struct.gsm_dlci*) #1

declare dso_local i32 @dlci_get(%struct.gsm_dlci*) #1

declare dso_local i32 @mux_get(%struct.gsm_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
