; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_console.c_hvc_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_console.c_hvc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.hvc_struct* }
%struct.hvc_struct = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EPIPE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @hvc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvc_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hvc_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load %struct.hvc_struct*, %struct.hvc_struct** %14, align 8
  store %struct.hvc_struct* %15, %struct.hvc_struct** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %17 = icmp ne %struct.hvc_struct* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EPIPE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %119

21:                                               ; preds = %3
  %22 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %23 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %119

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %109, %30
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %110

34:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  %35 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %36 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %35, i32 0, i32 3
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %40 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %43 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %34
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %56 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %59 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @memcpy(i32 %61, i8* %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %74 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %54, %34
  %81 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %82 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %87 = call i32 @hvc_push(%struct.hvc_struct* %86)
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %90 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %89, i32 0, i32 3
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  br label %110

96:                                               ; preds = %88
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %101 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %106 = call i32 @hvc_flush(%struct.hvc_struct* %105)
  br label %107

107:                                              ; preds = %104, %99
  %108 = call i32 (...) @cond_resched()
  br label %109

109:                                              ; preds = %107, %96
  br label %31

110:                                              ; preds = %95, %31
  %111 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %112 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 (...) @hvc_kick()
  br label %117

117:                                              ; preds = %115, %110
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %117, %27, %18
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @hvc_push(%struct.hvc_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hvc_flush(%struct.hvc_struct*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @hvc_kick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
