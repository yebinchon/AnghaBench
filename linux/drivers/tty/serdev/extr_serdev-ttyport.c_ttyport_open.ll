; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_serdev-ttyport.c_ttyport_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_controller = type { i32 }
%struct.serport = type { i32, i32, %struct.tty_struct*, i32 }
%struct.tty_struct = type { %struct.TYPE_2__*, %struct.ktermios }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i32*)*, i32 (%struct.tty_struct*, i32*)* }
%struct.ktermios = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@SERPORT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_controller*)* @ttyport_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttyport_open(%struct.serdev_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_controller*, align 8
  %4 = alloca %struct.serport*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.ktermios, align 4
  %7 = alloca i32, align 4
  store %struct.serdev_controller* %0, %struct.serdev_controller** %3, align 8
  %8 = load %struct.serdev_controller*, %struct.serdev_controller** %3, align 8
  %9 = call %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller* %8)
  store %struct.serport* %9, %struct.serport** %4, align 8
  %10 = load %struct.serport*, %struct.serport** %4, align 8
  %11 = getelementptr inbounds %struct.serport, %struct.serport* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.serport*, %struct.serport** %4, align 8
  %14 = getelementptr inbounds %struct.serport, %struct.serport* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.tty_struct* @tty_init_dev(i32 %12, i32 %15)
  store %struct.tty_struct* %16, %struct.tty_struct** %5, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %18 = call i64 @IS_ERR(%struct.tty_struct* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %22 = call i32 @PTR_ERR(%struct.tty_struct* %21)
  store i32 %22, i32* %2, align 4
  br label %144

23:                                               ; preds = %1
  %24 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %25 = load %struct.serport*, %struct.serport** %4, align 8
  %26 = getelementptr inbounds %struct.serport, %struct.serport* %25, i32 0, i32 2
  store %struct.tty_struct* %24, %struct.tty_struct** %26, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.tty_struct*, i32*)*, i32 (%struct.tty_struct*, i32*)** %30, align 8
  %32 = icmp ne i32 (%struct.tty_struct*, i32*)* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32 (%struct.tty_struct*, i32*)*, i32 (%struct.tty_struct*, i32*)** %37, align 8
  %39 = icmp ne i32 (%struct.tty_struct*, i32*)* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33, %23
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %135

43:                                               ; preds = %33
  %44 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.tty_struct*, i32*)*, i32 (%struct.tty_struct*, i32*)** %47, align 8
  %49 = load %struct.serport*, %struct.serport** %4, align 8
  %50 = getelementptr inbounds %struct.serport, %struct.serport* %49, i32 0, i32 2
  %51 = load %struct.tty_struct*, %struct.tty_struct** %50, align 8
  %52 = call i32 %48(%struct.tty_struct* %51, i32* null)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %127

56:                                               ; preds = %43
  %57 = load %struct.serport*, %struct.serport** %4, align 8
  %58 = getelementptr inbounds %struct.serport, %struct.serport* %57, i32 0, i32 2
  %59 = load %struct.tty_struct*, %struct.tty_struct** %58, align 8
  %60 = call i32 @tty_unlock(%struct.tty_struct* %59)
  %61 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %62 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %61, i32 0, i32 1
  %63 = bitcast %struct.ktermios* %6 to i8*
  %64 = bitcast %struct.ktermios* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 8 %64, i64 16, i1 false)
  %65 = load i32, i32* @IGNBRK, align 4
  %66 = load i32, i32* @BRKINT, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @PARMRK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @ISTRIP, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @INLCR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @IGNCR, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @ICRNL, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @IXON, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %6, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %80
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @OPOST, align 4
  %85 = xor i32 %84, -1
  %86 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %6, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %85
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @ECHO, align 4
  %90 = load i32, i32* @ECHONL, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @ICANON, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @ISIG, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @IEXTEN, align 4
  %97 = or i32 %95, %96
  %98 = xor i32 %97, -1
  %99 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %6, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %98
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @CSIZE, align 4
  %103 = load i32, i32* @PARENB, align 4
  %104 = or i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %6, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %105
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* @CS8, align 4
  %110 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %6, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %109
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* @CRTSCTS, align 4
  %114 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %6, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* @CLOCAL, align 4
  %118 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %6, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %117
  store i32 %120, i32* %118, align 4
  %121 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %122 = call i32 @tty_set_termios(%struct.tty_struct* %121, %struct.ktermios* %6)
  %123 = load i32, i32* @SERPORT_ACTIVE, align 4
  %124 = load %struct.serport*, %struct.serport** %4, align 8
  %125 = getelementptr inbounds %struct.serport, %struct.serport* %124, i32 0, i32 1
  %126 = call i32 @set_bit(i32 %123, i32* %125)
  store i32 0, i32* %2, align 4
  br label %144

127:                                              ; preds = %55
  %128 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %129 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32 (%struct.tty_struct*, i32*)*, i32 (%struct.tty_struct*, i32*)** %131, align 8
  %133 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %134 = call i32 %132(%struct.tty_struct* %133, i32* null)
  br label %135

135:                                              ; preds = %127, %40
  %136 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %137 = call i32 @tty_unlock(%struct.tty_struct* %136)
  %138 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %139 = load %struct.serport*, %struct.serport** %4, align 8
  %140 = getelementptr inbounds %struct.serport, %struct.serport* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @tty_release_struct(%struct.tty_struct* %138, i32 %141)
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %135, %56, %20
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.serport* @serdev_controller_get_drvdata(%struct.serdev_controller*) #1

declare dso_local %struct.tty_struct* @tty_init_dev(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tty_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.tty_struct*) #1

declare dso_local i32 @tty_unlock(%struct.tty_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_set_termios(%struct.tty_struct*, %struct.ktermios*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tty_release_struct(%struct.tty_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
