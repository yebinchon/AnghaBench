; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_finish_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_finish_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32, %struct.TYPE_5__*, i32, i32, i32, %struct.fsg_buffhd*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.fsg_buffhd = type { %struct.fsg_buffhd*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSG_STATE_ABORT_BULK_OUT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*)* @finish_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_reply(%struct.fsg_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_common*, align 8
  %4 = alloca %struct.fsg_buffhd*, align 8
  %5 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %3, align 8
  %6 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %7 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %6, i32 0, i32 5
  %8 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %7, align 8
  store %struct.fsg_buffhd* %8, %struct.fsg_buffhd** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %10 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %131 [
    i32 130, label %12
    i32 128, label %13
    i32 129, label %42
    i32 131, label %109
  ]

12:                                               ; preds = %1
  br label %131

13:                                               ; preds = %1
  %14 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %15 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %41

19:                                               ; preds = %13
  %20 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %21 = call i32 @fsg_is_set(%struct.fsg_common* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %25 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %28 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fsg_set_halt(%struct.TYPE_5__* %26, i32 %31)
  %33 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %34 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call i32 @halt_bulk_in_endpoint(%struct.TYPE_5__* %35)
  store i32 %36, i32* %5, align 4
  br label %40

37:                                               ; preds = %19
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %23
  br label %41

41:                                               ; preds = %40, %18
  br label %131

42:                                               ; preds = %1
  %43 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %44 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %108

48:                                               ; preds = %42
  %49 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %50 = call i32 @fsg_is_set(%struct.fsg_common* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %107

55:                                               ; preds = %48
  %56 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %57 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %62 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %66 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %67 = call i32 @start_in_transfer(%struct.fsg_common* %65, %struct.fsg_buffhd* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %133

72:                                               ; preds = %60
  %73 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %74 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %73, i32 0, i32 0
  %75 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %74, align 8
  %76 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %77 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %76, i32 0, i32 5
  store %struct.fsg_buffhd* %75, %struct.fsg_buffhd** %77, align 8
  br label %106

78:                                               ; preds = %55
  %79 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %80 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  %83 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %84 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %85 = call i32 @start_in_transfer(%struct.fsg_common* %83, %struct.fsg_buffhd* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %87, %78
  %91 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %4, align 8
  %92 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %91, i32 0, i32 0
  %93 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %92, align 8
  %94 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %95 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %94, i32 0, i32 5
  store %struct.fsg_buffhd* %93, %struct.fsg_buffhd** %95, align 8
  %96 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %97 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %90
  %101 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %102 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = call i32 @halt_bulk_in_endpoint(%struct.TYPE_5__* %103)
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %100, %90
  br label %106

106:                                              ; preds = %105, %72
  br label %107

107:                                              ; preds = %106, %52
  br label %108

108:                                              ; preds = %107, %47
  br label %131

109:                                              ; preds = %1
  %110 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %111 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %130

115:                                              ; preds = %109
  %116 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %117 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %122 = load i32, i32* @FSG_STATE_ABORT_BULK_OUT, align 4
  %123 = call i32 @raise_exception(%struct.fsg_common* %121, i32 %122)
  %124 = load i32, i32* @EINTR, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %129

126:                                              ; preds = %115
  %127 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %128 = call i32 @throw_away_data(%struct.fsg_common* %127)
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %126, %120
  br label %130

130:                                              ; preds = %129, %114
  br label %131

131:                                              ; preds = %1, %130, %108, %41, %12
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %69
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @fsg_is_set(%struct.fsg_common*) #1

declare dso_local i32 @fsg_set_halt(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @halt_bulk_in_endpoint(%struct.TYPE_5__*) #1

declare dso_local i32 @start_in_transfer(%struct.fsg_common*, %struct.fsg_buffhd*) #1

declare dso_local i32 @raise_exception(%struct.fsg_common*, i32) #1

declare dso_local i32 @throw_away_data(%struct.fsg_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
