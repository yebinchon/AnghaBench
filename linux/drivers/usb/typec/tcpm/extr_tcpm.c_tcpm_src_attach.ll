; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_src_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_src_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i64, i32, i64, i32, i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32)* }

@TYPEC_CC_RD = common dso_local global i64 0, align 8
@TYPEC_POLARITY_CC2 = common dso_local global i32 0, align 4
@TYPEC_POLARITY_CC1 = common dso_local global i32 0, align 4
@TYPEC_SOURCE = common dso_local global i32 0, align 4
@TYPEC_HOST = common dso_local global i32 0, align 4
@TYPEC_CC_RA = common dso_local global i64 0, align 8
@TYPEC_STATE_SAFE = common dso_local global i32 0, align 4
@USB_ROLE_NONE = common dso_local global i32 0, align 4
@TYPEC_ORIENTATION_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*)* @tcpm_src_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_src_attach(%struct.tcpm_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  %6 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %7 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TYPEC_CC_RD, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @TYPEC_POLARITY_CC2, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @TYPEC_POLARITY_CC1, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %4, align 4
  %17 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %18 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %114

22:                                               ; preds = %15
  %23 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @tcpm_set_polarity(%struct.tcpm_port* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %114

30:                                               ; preds = %22
  %31 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %32 = load i32, i32* @TYPEC_SOURCE, align 4
  %33 = load i32, i32* @TYPEC_HOST, align 4
  %34 = call i32 @tcpm_set_roles(%struct.tcpm_port* %31, i32 1, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %114

39:                                               ; preds = %30
  %40 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %41 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %40, i32 0, i32 5
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %43, align 8
  %45 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %46 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %45, i32 0, i32 5
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = call i32 %44(%struct.TYPE_3__* %47, i32 1)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %107

52:                                               ; preds = %39
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @TYPEC_POLARITY_CC1, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %58 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TYPEC_CC_RA, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %72, label %62

62:                                               ; preds = %56, %52
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @TYPEC_POLARITY_CC2, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %68 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TYPEC_CC_RA, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66, %56
  %73 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %74 = call i32 @tcpm_set_vconn(%struct.tcpm_port* %73, i32 1)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %97

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %66, %62
  %80 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %81 = call i32 @tcpm_set_vbus(%struct.tcpm_port* %80, i32 1)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %94

85:                                               ; preds = %79
  %86 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %87 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %86, i32 0, i32 3
  store i32 0, i32* %87, align 8
  %88 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %89 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %88, i32 0, i32 6
  store i32* null, i32** %89, align 8
  %90 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %91 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %90, i32 0, i32 1
  store i32 1, i32* %91, align 8
  %92 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %93 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %92, i32 0, i32 4
  store i32 1, i32* %93, align 4
  store i32 0, i32* %2, align 4
  br label %114

94:                                               ; preds = %84
  %95 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %96 = call i32 @tcpm_set_vconn(%struct.tcpm_port* %95, i32 0)
  br label %97

97:                                               ; preds = %94, %77
  %98 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %99 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %98, i32 0, i32 5
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %101, align 8
  %103 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %104 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %103, i32 0, i32 5
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = call i32 %102(%struct.TYPE_3__* %105, i32 0)
  br label %107

107:                                              ; preds = %97, %51
  %108 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %109 = load i32, i32* @TYPEC_STATE_SAFE, align 4
  %110 = load i32, i32* @USB_ROLE_NONE, align 4
  %111 = load i32, i32* @TYPEC_ORIENTATION_NONE, align 4
  %112 = call i32 @tcpm_mux_set(%struct.tcpm_port* %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %107, %85, %37, %28, %21
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @tcpm_set_polarity(%struct.tcpm_port*, i32) #1

declare dso_local i32 @tcpm_set_roles(%struct.tcpm_port*, i32, i32, i32) #1

declare dso_local i32 @tcpm_set_vconn(%struct.tcpm_port*, i32) #1

declare dso_local i32 @tcpm_set_vbus(%struct.tcpm_port*, i32) #1

declare dso_local i32 @tcpm_mux_set(%struct.tcpm_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
