; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_set_ldisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_set_ldisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.TYPE_4__*, %struct.tty_ldisc*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.tty_struct*)* }
%struct.tty_ldisc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TTY_HUPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_set_ldisc(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_ldisc*, align 8
  %8 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct* %9, i32 %10)
  store %struct.tty_ldisc* %11, %struct.tty_ldisc** %8, align 8
  %12 = load %struct.tty_ldisc*, %struct.tty_ldisc** %8, align 8
  %13 = call i64 @IS_ERR(%struct.tty_ldisc* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.tty_ldisc*, %struct.tty_ldisc** %8, align 8
  %17 = call i32 @PTR_ERR(%struct.tty_ldisc* %16)
  store i32 %17, i32* %3, align 4
  br label %130

18:                                               ; preds = %2
  %19 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %20 = call i32 @tty_lock(%struct.tty_struct* %19)
  %21 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 5, %22
  %24 = call i32 @tty_ldisc_lock(%struct.tty_struct* %21, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %124

28:                                               ; preds = %18
  %29 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 3
  %31 = load %struct.tty_ldisc*, %struct.tty_ldisc** %30, align 8
  %32 = icmp ne %struct.tty_ldisc* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %117

36:                                               ; preds = %28
  %37 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 3
  %39 = load %struct.tty_ldisc*, %struct.tty_ldisc** %38, align 8
  %40 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %117

47:                                               ; preds = %36
  %48 = load i32, i32* @TTY_HUPPED, align 4
  %49 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %50 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %49, i32 0, i32 4
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %117

56:                                               ; preds = %47
  %57 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %58 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %57, i32 0, i32 3
  %59 = load %struct.tty_ldisc*, %struct.tty_ldisc** %58, align 8
  store %struct.tty_ldisc* %59, %struct.tty_ldisc** %7, align 8
  %60 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %61 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %62 = call i32 @tty_ldisc_close(%struct.tty_struct* %60, %struct.tty_ldisc* %61)
  %63 = load %struct.tty_ldisc*, %struct.tty_ldisc** %8, align 8
  %64 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %65 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %64, i32 0, i32 3
  store %struct.tty_ldisc* %63, %struct.tty_ldisc** %65, align 8
  %66 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @tty_set_termios_ldisc(%struct.tty_struct* %66, i32 %67)
  %69 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %70 = load %struct.tty_ldisc*, %struct.tty_ldisc** %8, align 8
  %71 = call i32 @tty_ldisc_open(%struct.tty_struct* %69, %struct.tty_ldisc* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %56
  %75 = load %struct.tty_ldisc*, %struct.tty_ldisc** %8, align 8
  %76 = call i32 @tty_ldisc_put(%struct.tty_ldisc* %75)
  %77 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %78 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %79 = call i32 @tty_ldisc_restore(%struct.tty_struct* %77, %struct.tty_ldisc* %78)
  br label %80

80:                                               ; preds = %74, %56
  %81 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %82 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %81, i32 0, i32 3
  %83 = load %struct.tty_ldisc*, %struct.tty_ldisc** %82, align 8
  %84 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  %89 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %87, %92
  br i1 %93, label %94, label %115

94:                                               ; preds = %80
  %95 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %96 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %98, align 8
  %100 = icmp ne i32 (%struct.tty_struct*)* %99, null
  br i1 %100, label %101, label %115

101:                                              ; preds = %94
  %102 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %103 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %102, i32 0, i32 1
  %104 = call i32 @down_read(i32* %103)
  %105 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %106 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %105, i32 0, i32 2
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %108, align 8
  %110 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %111 = call i32 %109(%struct.tty_struct* %110)
  %112 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %113 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %112, i32 0, i32 1
  %114 = call i32 @up_read(i32* %113)
  br label %115

115:                                              ; preds = %101, %94, %80
  %116 = load %struct.tty_ldisc*, %struct.tty_ldisc** %7, align 8
  store %struct.tty_ldisc* %116, %struct.tty_ldisc** %8, align 8
  br label %117

117:                                              ; preds = %115, %53, %46, %33
  %118 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %119 = call i32 @tty_ldisc_unlock(%struct.tty_struct* %118)
  %120 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %121 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @tty_buffer_restart_work(i32 %122)
  br label %124

124:                                              ; preds = %117, %27
  %125 = load %struct.tty_ldisc*, %struct.tty_ldisc** %8, align 8
  %126 = call i32 @tty_ldisc_put(%struct.tty_ldisc* %125)
  %127 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %128 = call i32 @tty_unlock(%struct.tty_struct* %127)
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %124, %15
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct*, i32) #1

declare dso_local i64 @IS_ERR(%struct.tty_ldisc*) #1

declare dso_local i32 @PTR_ERR(%struct.tty_ldisc*) #1

declare dso_local i32 @tty_lock(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_lock(%struct.tty_struct*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @tty_ldisc_close(%struct.tty_struct*, %struct.tty_ldisc*) #1

declare dso_local i32 @tty_set_termios_ldisc(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_ldisc_open(%struct.tty_struct*, %struct.tty_ldisc*) #1

declare dso_local i32 @tty_ldisc_put(%struct.tty_ldisc*) #1

declare dso_local i32 @tty_ldisc_restore(%struct.tty_struct*, %struct.tty_ldisc*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @tty_ldisc_unlock(%struct.tty_struct*) #1

declare dso_local i32 @tty_buffer_restart_work(i32) #1

declare dso_local i32 @tty_unlock(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
