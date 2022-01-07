; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_u3d_core.c_mv_u3d_irq_process_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_u3d_core.c_mv_u3d_irq_process_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_u3d = type { i32, i32, %struct.TYPE_4__, i32, i8*, i32, i8*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"linkchange: 0x%x\0A\00", align 1
@MV_U3D_LINK_CHANGE_LINK_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"link up: ltssm state: 0x%x\0A\00", align 1
@USB_STATE_DEFAULT = common dso_local global i8* null, align 8
@MV_U3D_EP_DIR_OUT = common dso_local global i32 0, align 4
@MV_U3D_WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@MV_U3D_LINK_CHANGE_SUSPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"link suspend\0A\00", align 1
@USB_STATE_SUSPENDED = common dso_local global i8* null, align 8
@MV_U3D_LINK_CHANGE_RESUME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"link resume\0A\00", align 1
@MV_U3D_LINK_CHANGE_WRESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"warm reset\0A\00", align 1
@USB_STATE_POWERED = common dso_local global i8* null, align 8
@MV_U3D_LINK_CHANGE_HRESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"hot reset\0A\00", align 1
@MV_U3D_LINK_CHANGE_INACT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"inactive\0A\00", align 1
@MV_U3D_LINK_CHANGE_DISABLE_AFTER_U0 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"ss.disabled\0A\00", align 1
@MV_U3D_LINK_CHANGE_VBUS_INVALID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"vbus invalid\0A\00", align 1
@USB_STATE_ATTACHED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_u3d*)* @mv_u3d_irq_process_link_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_u3d_irq_process_link_change(%struct.mv_u3d* %0) #0 {
  %2 = alloca %struct.mv_u3d*, align 8
  %3 = alloca i32, align 4
  store %struct.mv_u3d* %0, %struct.mv_u3d** %2, align 8
  %4 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %5 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %4, i32 0, i32 9
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = call i32 @ioread32(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %11 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %10, i32 0, i32 9
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = call i32 @iowrite32(i32 %9, i32* %13)
  %15 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %16 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (i32, i8*, ...) @dev_dbg(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MV_U3D_LINK_CHANGE_LINK_UP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %1
  %25 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %26 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %29 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %28, i32 0, i32 9
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @ioread32(i32* %31)
  %33 = call i32 (i32, i8*, ...) @dev_dbg(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i8*, i8** @USB_STATE_DEFAULT, align 8
  %35 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %36 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @MV_U3D_EP_DIR_OUT, align 4
  %38 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %39 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @MV_U3D_WAIT_FOR_SETUP, align 4
  %41 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %42 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @USB_SPEED_SUPER, align 4
  %44 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %45 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  br label %47

47:                                               ; preds = %24, %1
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @MV_U3D_LINK_CHANGE_SUSPEND, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %54 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @dev_dbg(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %58 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %61 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @USB_STATE_SUSPENDED, align 8
  %63 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %64 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %52, %47
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @MV_U3D_LINK_CHANGE_RESUME, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %72 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i8*, ...) @dev_dbg(i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %76 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %75, i32 0, i32 6
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %79 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %81 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %80, i32 0, i32 6
  store i8* null, i8** %81, align 8
  br label %82

82:                                               ; preds = %70, %65
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @MV_U3D_LINK_CHANGE_WRESET, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %89 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32, i8*, ...) @dev_dbg(i32 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i8*, i8** @USB_STATE_POWERED, align 8
  %93 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %94 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %87, %82
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @MV_U3D_LINK_CHANGE_HRESET, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %102 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i32, i8*, ...) @dev_dbg(i32 %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i8*, i8** @USB_STATE_DEFAULT, align 8
  %106 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %107 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %100, %95
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @MV_U3D_LINK_CHANGE_INACT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %115 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i32, i8*, ...) @dev_dbg(i32 %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %113, %108
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @MV_U3D_LINK_CHANGE_DISABLE_AFTER_U0, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %125 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i32, i8*, ...) @dev_dbg(i32 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %128

128:                                              ; preds = %123, %118
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @MV_U3D_LINK_CHANGE_VBUS_INVALID, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %158

133:                                              ; preds = %128
  %134 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %135 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i32, i8*, ...) @dev_dbg(i32 %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %138 = load i8*, i8** @USB_STATE_ATTACHED, align 8
  %139 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %140 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  %141 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %142 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %144 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %133
  %148 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %149 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %148, i32 0, i32 1
  %150 = call i32 @spin_unlock(i32* %149)
  %151 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %152 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %151, i32 0, i32 2
  %153 = call i32 @mv_u3d_vbus_session(%struct.TYPE_4__* %152, i32 0)
  %154 = load %struct.mv_u3d*, %struct.mv_u3d** %2, align 8
  %155 = getelementptr inbounds %struct.mv_u3d, %struct.mv_u3d* %154, i32 0, i32 1
  %156 = call i32 @spin_lock(i32* %155)
  br label %157

157:                                              ; preds = %147, %133
  br label %158

158:                                              ; preds = %157, %128
  ret void
}

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mv_u3d_vbus_session(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
