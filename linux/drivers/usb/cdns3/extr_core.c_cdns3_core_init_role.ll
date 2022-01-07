; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdns3_core_init_role.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_core.c_cdns3_core_init_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { i32, i32, %struct.device* }
%struct.device = type { i32 }

@USB_ROLE_NONE = common dso_local global i32 0, align 4
@USB_DR_MODE_UNKNOWN = common dso_local global i32 0, align 4
@CONFIG_USB_CDNS3_HOST = common dso_local global i32 0, align 4
@CONFIG_USB_CDNS3_GADGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Incorrect DRD configuration\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Host initialization failed with %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Device initialization failed with %d\0A\00", align 1
@USB_ROLE_DEVICE = common dso_local global i32 0, align 4
@USB_ROLE_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3*)* @cdns3_core_init_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_core_init_role(%struct.cdns3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns3*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cdns3* %0, %struct.cdns3** %3, align 8
  %8 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %9 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %8, i32 0, i32 2
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @usb_get_dr_mode(%struct.device* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @USB_ROLE_NONE, align 4
  %14 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %15 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @USB_DR_MODE_UNKNOWN, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load i32, i32* @CONFIG_USB_CDNS3_HOST, align 4
  %21 = call i64 @IS_ENABLED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @CONFIG_USB_CDNS3_GADGET, align 4
  %25 = call i64 @IS_ENABLED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 129, i32* %6, align 4
  br label %40

28:                                               ; preds = %23, %19
  %29 = load i32, i32* @CONFIG_USB_CDNS3_HOST, align 4
  %30 = call i64 @IS_ENABLED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 130, i32* %6, align 4
  br label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @CONFIG_USB_CDNS3_GADGET, align 4
  %35 = call i64 @IS_ENABLED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 128, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %33
  br label %39

39:                                               ; preds = %38, %32
  br label %40

40:                                               ; preds = %39, %27
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %43 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %5, align 4
  %45 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %46 = call i32 @cdns3_idle_init(%struct.cdns3* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %163

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 129
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %56 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %5, align 4
  br label %78

58:                                               ; preds = %51
  %59 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %60 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 129
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %5, align 4
  br label %77

65:                                               ; preds = %58
  %66 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %67 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %163

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %63
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 129
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 130
  br i1 %84, label %85, label %95

85:                                               ; preds = %82, %78
  %86 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %87 = call i32 @cdns3_host_init(%struct.cdns3* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %159

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %82
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 129
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %99, 128
  br i1 %100, label %101, label %111

101:                                              ; preds = %98, %95
  %102 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %103 = call i32 @cdns3_gadget_init(%struct.cdns3* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %159

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %98
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %114 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %116 = call i32 @cdns3_drd_update_mode(%struct.cdns3* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %159

120:                                              ; preds = %111
  %121 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %122 = load i32, i32* @USB_ROLE_NONE, align 4
  %123 = call i32 @cdns3_role_start(%struct.cdns3* %121, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %159

127:                                              ; preds = %120
  %128 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %129 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  switch i32 %130, label %154 [
    i32 129, label %131
    i32 128, label %138
    i32 130, label %146
  ]

131:                                              ; preds = %127
  %132 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %133 = call i32 @cdns3_hw_role_switch(%struct.cdns3* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %159

137:                                              ; preds = %131
  br label %157

138:                                              ; preds = %127
  %139 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %140 = load i32, i32* @USB_ROLE_DEVICE, align 4
  %141 = call i32 @cdns3_role_start(%struct.cdns3* %139, i32 %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %159

145:                                              ; preds = %138
  br label %157

146:                                              ; preds = %127
  %147 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %148 = load i32, i32* @USB_ROLE_HOST, align 4
  %149 = call i32 @cdns3_role_start(%struct.cdns3* %147, i32 %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %159

153:                                              ; preds = %146
  br label %157

154:                                              ; preds = %127
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %7, align 4
  br label %159

157:                                              ; preds = %153, %145, %137
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %163

159:                                              ; preds = %154, %152, %144, %136, %126, %119, %106, %90
  %160 = load %struct.cdns3*, %struct.cdns3** %3, align 8
  %161 = call i32 @cdns3_exit_roles(%struct.cdns3* %160)
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %159, %157, %71, %49
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @usb_get_dr_mode(%struct.device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @cdns3_idle_init(%struct.cdns3*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @cdns3_host_init(%struct.cdns3*) #1

declare dso_local i32 @cdns3_gadget_init(%struct.cdns3*) #1

declare dso_local i32 @cdns3_drd_update_mode(%struct.cdns3*) #1

declare dso_local i32 @cdns3_role_start(%struct.cdns3*, i32) #1

declare dso_local i32 @cdns3_hw_role_switch(%struct.cdns3*) #1

declare dso_local i32 @cdns3_exit_roles(%struct.cdns3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
