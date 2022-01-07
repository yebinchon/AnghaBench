; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_audit.c_tty_audit_add_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_audit.c_tty_audit_add_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tty_struct = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.tty_audit_buf = type { i64, i32, i64, i64, i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@AUDIT_TTY_ENABLE = common dso_local global i32 0, align 4
@TTY_DRIVER_TYPE_PTY = common dso_local global i64 0, align 8
@PTY_TYPE_MASTER = common dso_local global i64 0, align 8
@AUDIT_TTY_LOG_PASSWD = common dso_local global i32 0, align 4
@N_TTY_BUF_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_audit_add_data(%struct.tty_struct* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tty_audit_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = call i32 @L_ICANON(%struct.tty_struct* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @READ_ONCE(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* @AUDIT_TTY_ENABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %163

30:                                               ; preds = %3
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %163

37:                                               ; preds = %30
  %38 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TTY_DRIVER_TYPE_PTY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %47 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PTY_TYPE_MASTER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %163

54:                                               ; preds = %45, %37
  %55 = load i32, i32* %9, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* @AUDIT_TTY_LOG_PASSWD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %65 = call i32 @L_ECHO(%struct.tty_struct* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %163

68:                                               ; preds = %63, %60, %54
  %69 = call %struct.tty_audit_buf* (...) @tty_audit_buf_get()
  store %struct.tty_audit_buf* %69, %struct.tty_audit_buf** %7, align 8
  %70 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %71 = call i64 @IS_ERR_OR_NULL(%struct.tty_audit_buf* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %163

74:                                               ; preds = %68
  %75 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %76 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %75, i32 0, i32 4
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %79 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %84 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @MKDEV(i32 %82, i32 %87)
  %89 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %90 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  store i64 %92, i64* %10, align 8
  %93 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %94 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %74
  %99 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %100 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %98, %74
  %105 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %106 = call i32 @tty_audit_buf_push(%struct.tty_audit_buf* %105)
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %109 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %112 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %104, %98
  br label %114

114:                                              ; preds = %156, %113
  %115 = load i64, i64* @N_TTY_BUF_SIZE, align 8
  %116 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %117 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  store i64 %119, i64* %11, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %6, align 8
  %122 = icmp ugt i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = load i64, i64* %6, align 8
  store i64 %124, i64* %11, align 8
  br label %125

125:                                              ; preds = %123, %114
  %126 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %127 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %130 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %128, %131
  %133 = load i8*, i8** %5, align 8
  %134 = load i64, i64* %11, align 8
  %135 = call i32 @memcpy(i64 %132, i8* %133, i64 %134)
  %136 = load i64, i64* %11, align 8
  %137 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %138 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, %136
  store i64 %140, i64* %138, align 8
  %141 = load i64, i64* %11, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr i8, i8* %142, i64 %141
  store i8* %143, i8** %5, align 8
  %144 = load i64, i64* %11, align 8
  %145 = load i64, i64* %6, align 8
  %146 = sub i64 %145, %144
  store i64 %146, i64* %6, align 8
  %147 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %148 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @N_TTY_BUF_SIZE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %125
  %153 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %154 = call i32 @tty_audit_buf_push(%struct.tty_audit_buf* %153)
  br label %155

155:                                              ; preds = %152, %125
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %6, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %114, label %159

159:                                              ; preds = %156
  %160 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %7, align 8
  %161 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %160, i32 0, i32 4
  %162 = call i32 @mutex_unlock(i32* %161)
  br label %163

163:                                              ; preds = %159, %73, %67, %53, %36, %29
  ret void
}

declare dso_local i32 @L_ICANON(%struct.tty_struct*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @L_ECHO(%struct.tty_struct*) #1

declare dso_local %struct.tty_audit_buf* @tty_audit_buf_get(...) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.tty_audit_buf*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @MKDEV(i32, i32) #1

declare dso_local i32 @tty_audit_buf_push(%struct.tty_audit_buf*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
