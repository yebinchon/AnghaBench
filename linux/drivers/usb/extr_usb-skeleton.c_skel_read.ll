; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/extr_usb-skeleton.c_skel_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/extr_usb-skeleton.c_skel_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.usb_skel* }
%struct.usb_skel = type { i32, i32, i64, i64, i64, i32, i32, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, i32*)* @skel_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skel_read(%struct.file* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.usb_skel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = load %struct.usb_skel*, %struct.usb_skel** %16, align 8
  store %struct.usb_skel* %17, %struct.usb_skel** %10, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %169

21:                                               ; preds = %4
  %22 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %23 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %22, i32 0, i32 5
  %24 = call i32 @mutex_lock_interruptible(i32* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %169

29:                                               ; preds = %21
  %30 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %31 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %30, i32 0, i32 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %164

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %162, %120, %37
  %39 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %40 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %39, i32 0, i32 7
  %41 = call i32 @spin_lock_irq(i32* %40)
  %42 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %43 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  %45 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %46 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %45, i32 0, i32 7
  %47 = call i32 @spin_unlock_irq(i32* %46)
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %38
  %51 = load %struct.file*, %struct.file** %6, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @O_NONBLOCK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  br label %164

60:                                               ; preds = %50
  %61 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %62 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %65 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @wait_event_interruptible(i32 %63, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %164

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %38
  %76 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %77 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %83 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @EPIPE, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %11, align 4
  br label %93

90:                                               ; preds = %81
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  br label %93

93:                                               ; preds = %90, %88
  %94 = phi i32 [ %89, %88 ], [ %92, %90 ]
  store i32 %94, i32* %11, align 4
  br label %164

95:                                               ; preds = %75
  %96 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %97 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %155

100:                                              ; preds = %95
  %101 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %102 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %105 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %103, %106
  store i64 %107, i64* %13, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* %8, align 8
  %110 = call i64 @min(i64 %108, i64 %109)
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %13, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %100
  %114 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @skel_do_read_io(%struct.usb_skel* %114, i64 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %164

120:                                              ; preds = %113
  br label %38

121:                                              ; preds = %100
  %122 = load i8*, i8** %7, align 8
  %123 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %124 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %127 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %125, %128
  %130 = load i64, i64* %14, align 8
  %131 = call i64 @copy_to_user(i8* %122, i64 %129, i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %121
  %134 = load i32, i32* @EFAULT, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %11, align 4
  br label %139

136:                                              ; preds = %121
  %137 = load i64, i64* %14, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i64, i64* %14, align 8
  %141 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %142 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, %140
  store i64 %144, i64* %142, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %8, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %139
  %149 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* %14, align 8
  %152 = sub i64 %150, %151
  %153 = call i32 @skel_do_read_io(%struct.usb_skel* %149, i64 %152)
  br label %154

154:                                              ; preds = %148, %139
  br label %163

155:                                              ; preds = %95
  %156 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %157 = load i64, i64* %8, align 8
  %158 = call i32 @skel_do_read_io(%struct.usb_skel* %156, i64 %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %164

162:                                              ; preds = %155
  br label %38

163:                                              ; preds = %154
  br label %164

164:                                              ; preds = %163, %161, %119, %93, %73, %57, %34
  %165 = load %struct.usb_skel*, %struct.usb_skel** %10, align 8
  %166 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %165, i32 0, i32 5
  %167 = call i32 @mutex_unlock(i32* %166)
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %164, %27, %20
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @skel_do_read_io(%struct.usb_skel*, i64) #1

declare dso_local i64 @copy_to_user(i8*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
