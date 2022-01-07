; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_pipe_buffer_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_pipe_buffer_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.r8a66597_pipe_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i64 }

@ACLRM = common dso_local global i32 0, align 4
@PIPESEL = common dso_local global i32 0, align 4
@R8A66597_DIR = common dso_local global i32 0, align 4
@R8A66597_BULK = common dso_local global i32 0, align 4
@R8A66597_DBLB = common dso_local global i32 0, align 4
@R8A66597_SHTNAK = common dso_local global i32 0, align 4
@PIPECFG = common dso_local global i32 0, align 4
@PIPEBUF = common dso_local global i32 0, align 4
@PIPEMAXP = common dso_local global i32 0, align 4
@PIPEPERI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_pipe_info*)* @pipe_buffer_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_buffer_setting(%struct.r8a66597* %0, %struct.r8a66597_pipe_info* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.r8a66597_pipe_info*, align 8
  %5 = alloca i32, align 4
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.r8a66597_pipe_info* %1, %struct.r8a66597_pipe_info** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %4, align 8
  %7 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %100

11:                                               ; preds = %2
  %12 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %13 = load i32, i32* @ACLRM, align 4
  %14 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %4, align 8
  %15 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @get_pipectr_addr(i64 %16)
  %18 = call i32 @r8a66597_bset(%struct.r8a66597* %12, i32 %13, i32 %17)
  %19 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %20 = load i32, i32* @ACLRM, align 4
  %21 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %4, align 8
  %22 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @get_pipectr_addr(i64 %23)
  %25 = call i32 @r8a66597_bclr(%struct.r8a66597* %19, i32 %20, i32 %24)
  %26 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %27 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %4, align 8
  %28 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @PIPESEL, align 4
  %32 = call i32 @r8a66597_write(%struct.r8a66597* %26, i32 %30, i32 %31)
  %33 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %4, align 8
  %34 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %11
  %38 = load i32, i32* @R8A66597_DIR, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %11
  %42 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %4, align 8
  %43 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @R8A66597_BULK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %4, align 8
  %49 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %48, i32 0, i32 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @R8A66597_DBLB, align 4
  %54 = load i32, i32* @R8A66597_SHTNAK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %52, %47, %41
  %59 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %4, align 8
  %60 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %4, align 8
  %63 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %61, %64
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @PIPECFG, align 4
  %71 = call i32 @r8a66597_write(%struct.r8a66597* %68, i32 %69, i32 %70)
  %72 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %73 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %4, align 8
  %74 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = shl i32 %75, 10
  %77 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %4, align 8
  %78 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %76, %79
  %81 = load i32, i32* @PIPEBUF, align 4
  %82 = call i32 @r8a66597_write(%struct.r8a66597* %72, i32 %80, i32 %81)
  %83 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %84 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %4, align 8
  %85 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @make_devsel(i32 %86)
  %88 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %4, align 8
  %89 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %87, %90
  %92 = load i32, i32* @PIPEMAXP, align 4
  %93 = call i32 @r8a66597_write(%struct.r8a66597* %83, i32 %91, i32 %92)
  %94 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %95 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %4, align 8
  %96 = getelementptr inbounds %struct.r8a66597_pipe_info, %struct.r8a66597_pipe_info* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PIPEPERI, align 4
  %99 = call i32 @r8a66597_write(%struct.r8a66597* %94, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %58, %10
  ret void
}

declare dso_local i32 @r8a66597_bset(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @get_pipectr_addr(i64) #1

declare dso_local i32 @r8a66597_bclr(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @r8a66597_write(%struct.r8a66597*, i32, i32) #1

declare dso_local i32 @make_devsel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
