; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c___receive_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c___receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.TYPE_2__*, i64, %struct.n_tty_data* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }
%struct.n_tty_data = type { i32, i32, i64, i64, i64, i64 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @__receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__receive_buf(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.n_tty_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 4
  %14 = load %struct.n_tty_data*, %struct.n_tty_data** %13, align 8
  store %struct.n_tty_data* %14, %struct.n_tty_data** %9, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %16 = call i64 @I_ISTRIP(%struct.tty_struct* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %4
  %19 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %20 = call i64 @I_IUCLC(%struct.tty_struct* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %24 = call i64 @L_IEXTEN(%struct.tty_struct* %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ false, %18 ], [ %25, %22 ]
  br label %28

28:                                               ; preds = %26, %4
  %29 = phi i1 [ true, %4 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  %32 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @n_tty_receive_buf_real_raw(%struct.tty_struct* %36, i8* %37, i8* %38, i32 %39)
  br label %136

41:                                               ; preds = %28
  %42 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  %43 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %48 = call i64 @L_EXTPROC(%struct.tty_struct* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50, %41
  %54 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @n_tty_receive_buf_raw(%struct.tty_struct* %54, i8* %55, i8* %56, i32 %57)
  br label %135

59:                                               ; preds = %50, %46
  %60 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %61 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %66 = call i64 @L_EXTPROC(%struct.tty_struct* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @n_tty_receive_buf_closing(%struct.tty_struct* %69, i8* %70, i8* %71, i32 %72)
  br label %134

74:                                               ; preds = %64, %59
  %75 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  %76 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %80, i8* %11, align 1
  %81 = load i8*, i8** %7, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %7, align 8
  %86 = load i8, i8* %84, align 1
  store i8 %86, i8* %11, align 1
  br label %87

87:                                               ; preds = %83, %79
  %88 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %6, align 8
  %91 = load i8, i8* %89, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* %11, align 1
  %94 = call i32 @n_tty_receive_char_lnext(%struct.tty_struct* %88, i32 %92, i8 signext %93)
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %87, %74
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %97
  %101 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %102 = call i32 @I_PARMRK(%struct.tty_struct* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @n_tty_receive_buf_fast(%struct.tty_struct* %105, i8* %106, i8* %107, i32 %108)
  br label %116

110:                                              ; preds = %100, %97
  %111 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @n_tty_receive_buf_standard(%struct.tty_struct* %111, i8* %112, i8* %113, i32 %114)
  br label %116

116:                                              ; preds = %110, %104
  %117 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %118 = call i32 @flush_echoes(%struct.tty_struct* %117)
  %119 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %120 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %122, align 8
  %124 = icmp ne i32 (%struct.tty_struct*)* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %116
  %126 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %127 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %129, align 8
  %131 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %132 = call i32 %130(%struct.tty_struct* %131)
  br label %133

133:                                              ; preds = %125, %116
  br label %134

134:                                              ; preds = %133, %68
  br label %135

135:                                              ; preds = %134, %53
  br label %136

136:                                              ; preds = %135, %35
  %137 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  %138 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %143 = call i64 @L_EXTPROC(%struct.tty_struct* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %141
  br label %166

146:                                              ; preds = %141, %136
  %147 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  %148 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %147, i32 0, i32 1
  %149 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  %150 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @smp_store_release(i32* %148, i32 %151)
  %153 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  %154 = call i64 @read_cnt(%struct.n_tty_data* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %146
  %157 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %158 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %157, i32 0, i32 1
  %159 = load i32, i32* @SIGIO, align 4
  %160 = load i32, i32* @POLL_IN, align 4
  %161 = call i32 @kill_fasync(i32* %158, i32 %159, i32 %160)
  %162 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %163 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %162, i32 0, i32 0
  %164 = load i32, i32* @EPOLLIN, align 4
  %165 = call i32 @wake_up_interruptible_poll(i32* %163, i32 %164)
  br label %166

166:                                              ; preds = %145, %156, %146
  ret void
}

declare dso_local i64 @I_ISTRIP(%struct.tty_struct*) #1

declare dso_local i64 @I_IUCLC(%struct.tty_struct*) #1

declare dso_local i64 @L_IEXTEN(%struct.tty_struct*) #1

declare dso_local i32 @n_tty_receive_buf_real_raw(%struct.tty_struct*, i8*, i8*, i32) #1

declare dso_local i64 @L_EXTPROC(%struct.tty_struct*) #1

declare dso_local i32 @n_tty_receive_buf_raw(%struct.tty_struct*, i8*, i8*, i32) #1

declare dso_local i32 @n_tty_receive_buf_closing(%struct.tty_struct*, i8*, i8*, i32) #1

declare dso_local i32 @n_tty_receive_char_lnext(%struct.tty_struct*, i32, i8 signext) #1

declare dso_local i32 @I_PARMRK(%struct.tty_struct*) #1

declare dso_local i32 @n_tty_receive_buf_fast(%struct.tty_struct*, i8*, i8*, i32) #1

declare dso_local i32 @n_tty_receive_buf_standard(%struct.tty_struct*, i8*, i8*, i32) #1

declare dso_local i32 @flush_echoes(%struct.tty_struct*) #1

declare dso_local i32 @smp_store_release(i32*, i32) #1

declare dso_local i64 @read_cnt(%struct.n_tty_data*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible_poll(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
