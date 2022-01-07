; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_pty.c_pty_common_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_pty.c_pty_common_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i64, i32, %struct.tty_driver*, i32, %struct.tty_struct** }
%struct.tty_struct = type { i32, i32, %struct.tty_port*, %struct.tty_struct*, i32, i32, i32 }
%struct.tty_port = type { %struct.tty_struct* }

@ENOMEM = common dso_local global i32 0, align 4
@PTY_TYPE_MASTER = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TTY_LOCK_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*, i32)* @pty_common_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pty_common_install(%struct.tty_driver* %0, %struct.tty_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_driver*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca [2 x %struct.tty_port*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %5, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %18 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PTY_TYPE_MASTER, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %172

25:                                               ; preds = %3
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.tty_port* @kmalloc(i32 8, i32 %26)
  %28 = getelementptr inbounds [2 x %struct.tty_port*], [2 x %struct.tty_port*]* %9, i64 0, i64 0
  store %struct.tty_port* %27, %struct.tty_port** %28, align 16
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.tty_port* @kmalloc(i32 8, i32 %29)
  %31 = getelementptr inbounds [2 x %struct.tty_port*], [2 x %struct.tty_port*]* %9, i64 0, i64 1
  store %struct.tty_port* %30, %struct.tty_port** %31, align 8
  %32 = getelementptr inbounds [2 x %struct.tty_port*], [2 x %struct.tty_port*]* %9, i64 0, i64 0
  %33 = load %struct.tty_port*, %struct.tty_port** %32, align 16
  %34 = icmp ne %struct.tty_port* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = getelementptr inbounds [2 x %struct.tty_port*], [2 x %struct.tty_port*]* %9, i64 0, i64 1
  %37 = load %struct.tty_port*, %struct.tty_port** %36, align 8
  %38 = icmp ne %struct.tty_port* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %25
  br label %164

40:                                               ; preds = %35
  %41 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %42 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %41, i32 0, i32 2
  %43 = load %struct.tty_driver*, %struct.tty_driver** %42, align 8
  %44 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @try_module_get(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %164

49:                                               ; preds = %40
  %50 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %51 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %50, i32 0, i32 2
  %52 = load %struct.tty_driver*, %struct.tty_driver** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call %struct.tty_struct* @alloc_tty_struct(%struct.tty_driver* %52, i32 %53)
  store %struct.tty_struct* %54, %struct.tty_struct** %8, align 8
  %55 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %56 = icmp ne %struct.tty_struct* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %157

58:                                               ; preds = %49
  %59 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %60 = call i32 @tty_set_lock_subclass(%struct.tty_struct* %59)
  %61 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %62 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %61, i32 0, i32 6
  %63 = load i32, i32* @TTY_LOCK_SLAVE, align 4
  %64 = call i32 @lockdep_set_subclass(i32* %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %58
  %68 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %69 = call i32 @tty_init_termios(%struct.tty_struct* %68)
  %70 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %71 = call i32 @tty_init_termios(%struct.tty_struct* %70)
  %72 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %73 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %74 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %73, i32 0, i32 2
  %75 = load %struct.tty_driver*, %struct.tty_driver** %74, align 8
  %76 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %75, i32 0, i32 4
  %77 = load %struct.tty_struct**, %struct.tty_struct*** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.tty_struct*, %struct.tty_struct** %77, i64 %79
  store %struct.tty_struct* %72, %struct.tty_struct** %80, align 8
  %81 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %82 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %83 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %82, i32 0, i32 4
  %84 = load %struct.tty_struct**, %struct.tty_struct*** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.tty_struct*, %struct.tty_struct** %84, i64 %86
  store %struct.tty_struct* %81, %struct.tty_struct** %87, align 8
  br label %107

88:                                               ; preds = %58
  %89 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %90 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %89, i32 0, i32 5
  %91 = call i32 @memset(i32* %90, i32 0, i32 4)
  %92 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %93 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %96 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %98 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %97, i32 0, i32 5
  %99 = call i32 @memset(i32* %98, i32 0, i32 4)
  %100 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %101 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %100, i32 0, i32 2
  %102 = load %struct.tty_driver*, %struct.tty_driver** %101, align 8
  %103 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %106 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %88, %67
  %108 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %109 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %108, i32 0, i32 2
  %110 = load %struct.tty_driver*, %struct.tty_driver** %109, align 8
  %111 = call i32 @tty_driver_kref_get(%struct.tty_driver* %110)
  %112 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %113 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %114 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %113, i32 0, i32 3
  store %struct.tty_struct* %112, %struct.tty_struct** %114, align 8
  %115 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %116 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %117 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %116, i32 0, i32 3
  store %struct.tty_struct* %115, %struct.tty_struct** %117, align 8
  %118 = getelementptr inbounds [2 x %struct.tty_port*], [2 x %struct.tty_port*]* %9, i64 0, i64 0
  %119 = load %struct.tty_port*, %struct.tty_port** %118, align 16
  %120 = call i32 @tty_port_init(%struct.tty_port* %119)
  %121 = getelementptr inbounds [2 x %struct.tty_port*], [2 x %struct.tty_port*]* %9, i64 0, i64 1
  %122 = load %struct.tty_port*, %struct.tty_port** %121, align 8
  %123 = call i32 @tty_port_init(%struct.tty_port* %122)
  %124 = getelementptr inbounds [2 x %struct.tty_port*], [2 x %struct.tty_port*]* %9, i64 0, i64 0
  %125 = load %struct.tty_port*, %struct.tty_port** %124, align 16
  %126 = call i32 @tty_buffer_set_limit(%struct.tty_port* %125, i32 8192)
  %127 = getelementptr inbounds [2 x %struct.tty_port*], [2 x %struct.tty_port*]* %9, i64 0, i64 1
  %128 = load %struct.tty_port*, %struct.tty_port** %127, align 8
  %129 = call i32 @tty_buffer_set_limit(%struct.tty_port* %128, i32 8192)
  %130 = getelementptr inbounds [2 x %struct.tty_port*], [2 x %struct.tty_port*]* %9, i64 0, i64 0
  %131 = load %struct.tty_port*, %struct.tty_port** %130, align 16
  %132 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %133 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %132, i32 0, i32 2
  store %struct.tty_port* %131, %struct.tty_port** %133, align 8
  %134 = getelementptr inbounds [2 x %struct.tty_port*], [2 x %struct.tty_port*]* %9, i64 0, i64 1
  %135 = load %struct.tty_port*, %struct.tty_port** %134, align 8
  %136 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %137 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %136, i32 0, i32 2
  store %struct.tty_port* %135, %struct.tty_port** %137, align 8
  %138 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %139 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %140 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %139, i32 0, i32 2
  %141 = load %struct.tty_port*, %struct.tty_port** %140, align 8
  %142 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %141, i32 0, i32 0
  store %struct.tty_struct* %138, %struct.tty_struct** %142, align 8
  %143 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %144 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %143, i32 0, i32 2
  %145 = load %struct.tty_port*, %struct.tty_port** %144, align 8
  %146 = call i32 @tty_buffer_set_lock_subclass(%struct.tty_port* %145)
  %147 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %148 = call i32 @tty_driver_kref_get(%struct.tty_driver* %147)
  %149 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %150 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %154 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  store i32 0, i32* %4, align 4
  br label %172

157:                                              ; preds = %57
  %158 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %159 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %158, i32 0, i32 2
  %160 = load %struct.tty_driver*, %struct.tty_driver** %159, align 8
  %161 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @module_put(i32 %162)
  br label %164

164:                                              ; preds = %157, %48, %39
  %165 = getelementptr inbounds [2 x %struct.tty_port*], [2 x %struct.tty_port*]* %9, i64 0, i64 0
  %166 = load %struct.tty_port*, %struct.tty_port** %165, align 16
  %167 = call i32 @kfree(%struct.tty_port* %166)
  %168 = getelementptr inbounds [2 x %struct.tty_port*], [2 x %struct.tty_port*]* %9, i64 0, i64 1
  %169 = load %struct.tty_port*, %struct.tty_port** %168, align 8
  %170 = call i32 @kfree(%struct.tty_port* %169)
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %164, %107, %22
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local %struct.tty_port* @kmalloc(i32, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.tty_struct* @alloc_tty_struct(%struct.tty_driver*, i32) #1

declare dso_local i32 @tty_set_lock_subclass(%struct.tty_struct*) #1

declare dso_local i32 @lockdep_set_subclass(i32*, i32) #1

declare dso_local i32 @tty_init_termios(%struct.tty_struct*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @tty_driver_kref_get(%struct.tty_driver*) #1

declare dso_local i32 @tty_port_init(%struct.tty_port*) #1

declare dso_local i32 @tty_buffer_set_limit(%struct.tty_port*, i32) #1

declare dso_local i32 @tty_buffer_set_lock_subclass(%struct.tty_port*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
