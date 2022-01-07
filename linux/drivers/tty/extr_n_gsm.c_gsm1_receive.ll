; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm1_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm1_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i32, i64, i8*, i64, i32, i8, i64, i32, i8*, i32, i32 }

@GSM1_SOF = common dso_local global i8 0, align 1
@GSM1_ESCAPE = common dso_local global i8 0, align 1
@GSM_SEARCH = common dso_local global i32 0, align 4
@GSM1_ESCAPE_BITS = common dso_local global i8 0, align 1
@INIT_FCS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_mux*, i8)* @gsm1_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm1_receive(%struct.gsm_mux* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.gsm_mux*, align 8
  %4 = alloca i8, align 1
  store %struct.gsm_mux* %0, %struct.gsm_mux** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @GSM1_SOF, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %61

10:                                               ; preds = %2
  %11 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %12 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 130
  br i1 %14, label %15, label %48

15:                                               ; preds = %10
  %16 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %17 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %15
  %21 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %22 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %26 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %25, i32 0, i32 8
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %29 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %32 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = call i8* @gsm_fcs_add(i8* %27, i8 zeroext %35)
  %37 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %38 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %37, i32 0, i32 8
  store i8* %36, i8** %38, align 8
  %39 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %40 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %43 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %45 = call i32 @gsm_queue(%struct.gsm_mux* %44)
  %46 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %47 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %46, i32 0, i32 0
  store i32 128, i32* %47, align 8
  br label %162

48:                                               ; preds = %15, %10
  %49 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %50 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 128
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %55 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %59 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %58, i32 0, i32 0
  store i32 128, i32* %59, align 8
  br label %60

60:                                               ; preds = %53, %48
  br label %162

61:                                               ; preds = %2
  %62 = load i8, i8* %4, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @GSM1_ESCAPE, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %69 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %68, i32 0, i32 4
  store i32 1, i32* %69, align 8
  br label %162

70:                                               ; preds = %61
  %71 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %72 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @GSM_SEARCH, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %162

77:                                               ; preds = %70
  %78 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %79 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i8, i8* @GSM1_ESCAPE_BITS, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %4, align 1
  %86 = zext i8 %85 to i32
  %87 = xor i32 %86, %84
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %4, align 1
  %89 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %90 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %89, i32 0, i32 4
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %82, %77
  %92 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %93 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %162 [
    i32 128, label %95
    i32 132, label %103
    i32 131, label %120
    i32 130, label %135
    i32 129, label %161
  ]

95:                                               ; preds = %91
  %96 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %97 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %96, i32 0, i32 9
  store i32 0, i32* %97, align 8
  %98 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %99 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %98, i32 0, i32 0
  store i32 132, i32* %99, align 8
  %100 = load i8*, i8** @INIT_FCS, align 8
  %101 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %102 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %101, i32 0, i32 8
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %91, %95
  %104 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %105 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %104, i32 0, i32 8
  %106 = load i8*, i8** %105, align 8
  %107 = load i8, i8* %4, align 1
  %108 = call i8* @gsm_fcs_add(i8* %106, i8 zeroext %107)
  %109 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %110 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %109, i32 0, i32 8
  store i8* %108, i8** %110, align 8
  %111 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %112 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %111, i32 0, i32 9
  %113 = load i8, i8* %4, align 1
  %114 = call i32 @gsm_read_ea(i32* %112, i8 zeroext %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %103
  %117 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %118 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %117, i32 0, i32 0
  store i32 131, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %103
  br label %162

120:                                              ; preds = %91
  %121 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %122 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %121, i32 0, i32 8
  %123 = load i8*, i8** %122, align 8
  %124 = load i8, i8* %4, align 1
  %125 = call i8* @gsm_fcs_add(i8* %123, i8 zeroext %124)
  %126 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %127 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %126, i32 0, i32 8
  store i8* %125, i8** %127, align 8
  %128 = load i8, i8* %4, align 1
  %129 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %130 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %129, i32 0, i32 5
  store i8 %128, i8* %130, align 4
  %131 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %132 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %134 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %133, i32 0, i32 0
  store i32 130, i32* %134, align 8
  br label %162

135:                                              ; preds = %91
  %136 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %137 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %140 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = icmp ugt i64 %138, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %135
  %144 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %145 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %144, i32 0, i32 0
  store i32 129, i32* %145, align 8
  %146 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %147 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  br label %160

150:                                              ; preds = %135
  %151 = load i8, i8* %4, align 1
  %152 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %153 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.gsm_mux*, %struct.gsm_mux** %3, align 8
  %156 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %156, align 8
  %159 = getelementptr inbounds i8, i8* %154, i64 %157
  store i8 %151, i8* %159, align 1
  br label %160

160:                                              ; preds = %150, %143
  br label %162

161:                                              ; preds = %91
  br label %162

162:                                              ; preds = %20, %60, %67, %76, %91, %161, %160, %120, %119
  ret void
}

declare dso_local i8* @gsm_fcs_add(i8*, i8 zeroext) #1

declare dso_local i32 @gsm_queue(%struct.gsm_mux*) #1

declare dso_local i32 @gsm_read_ea(i32*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
