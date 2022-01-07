; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_buf_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_receive_buf_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.TYPE_2__*, i32, %struct.n_tty_data* }
%struct.TYPE_2__ = type { i64 }
%struct.n_tty_data = type { i64, i64, i32, i64, i32 }

@N_TTY_BUF_SIZE = common dso_local global i64 0, align 8
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_LDISC_CHANGING = common dso_local global i32 0, align 4
@TTY_DRIVER_TYPE_PTY = common dso_local global i64 0, align 8
@TTY_UNTHROTTLE_SAFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i8*, i32, i32)* @n_tty_receive_buf_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n_tty_receive_buf_common(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.n_tty_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 4
  %19 = load %struct.n_tty_data*, %struct.n_tty_data** %18, align 8
  store %struct.n_tty_data* %19, %struct.n_tty_data** %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 1
  %22 = call i32 @down_read(i32* %21)
  br label %23

23:                                               ; preds = %130, %5
  %24 = load %struct.n_tty_data*, %struct.n_tty_data** %11, align 8
  %25 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %24, i32 0, i32 4
  %26 = call i64 @smp_load_acquire(i32* %25)
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* @N_TTY_BUF_SIZE, align 8
  %28 = load %struct.n_tty_data*, %struct.n_tty_data** %11, align 8
  %29 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %16, align 8
  %32 = sub i64 %30, %31
  %33 = sub i64 %27, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %36 = call i64 @I_PARMRK(%struct.tty_struct* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %23
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 2
  %41 = sdiv i32 %40, 3
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %38, %23
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %42
  %48 = load %struct.n_tty_data*, %struct.n_tty_data** %11, align 8
  %49 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.n_tty_data*, %struct.n_tty_data** %11, align 8
  %54 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %16, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %52, %47
  %59 = phi i1 [ false, %47 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.n_tty_data*, %struct.n_tty_data** %11, align 8
  %68 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, -1
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %66, %63, %58
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i1 [ false, %71 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  %82 = load %struct.n_tty_data*, %struct.n_tty_data** %11, align 8
  %83 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  br label %85

84:                                               ; preds = %42
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @min(i32 %86, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %137

92:                                               ; preds = %85
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i8*, i8** %8, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i8*, i8** %8, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* @TTY_PARITY, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %98, %95, %92
  %106 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @__receive_buf(%struct.tty_struct* %106, i8* %107, i8* %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %98
  %112 = load i32, i32* %13, align 4
  %113 = load i8*, i8** %7, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %7, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load i32, i32* %13, align 4
  %120 = load i8*, i8** %8, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %8, align 8
  br label %123

123:                                              ; preds = %118, %111
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %9, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %123
  %131 = load i32, i32* @TTY_LDISC_CHANGING, align 4
  %132 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %133 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %132, i32 0, i32 3
  %134 = call i32 @test_bit(i32 %131, i32* %133)
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  br i1 %136, label %23, label %137

137:                                              ; preds = %130, %91
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %140 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %142 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %141, i32 0, i32 2
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @TTY_DRIVER_TYPE_PTY, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %137
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %148
  %152 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %153 = load i32, i32* @TTY_UNTHROTTLE_SAFE, align 4
  %154 = call i32 @tty_set_flow_change(%struct.tty_struct* %152, i32 %153)
  %155 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %156 = call i32 @tty_unthrottle_safe(%struct.tty_struct* %155)
  %157 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %158 = call i32 @__tty_set_flow_change(%struct.tty_struct* %157, i32 0)
  br label %159

159:                                              ; preds = %151, %148
  br label %163

160:                                              ; preds = %137
  %161 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %162 = call i32 @n_tty_check_throttle(%struct.tty_struct* %161)
  br label %163

163:                                              ; preds = %160, %159
  %164 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %165 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %164, i32 0, i32 1
  %166 = call i32 @up_read(i32* %165)
  %167 = load i32, i32* %14, align 4
  ret i32 %167
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @smp_load_acquire(i32*) #1

declare dso_local i64 @I_PARMRK(%struct.tty_struct*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @__receive_buf(%struct.tty_struct*, i8*, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @tty_set_flow_change(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_unthrottle_safe(%struct.tty_struct*) #1

declare dso_local i32 @__tty_set_flow_change(%struct.tty_struct*, i32) #1

declare dso_local i32 @n_tty_check_throttle(%struct.tty_struct*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
