; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_register_altmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi.c_ucsi_register_altmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_connector = type { %struct.TYPE_4__*, %struct.typec_altmode**, i32, %struct.typec_altmode**, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.typec_altmode = type { i32 }
%struct.typec_altmode_desc = type { i8*, i32 }

@UCSI_CAP_ALT_MODE_OVERRIDE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to registers svid 0x%04x mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_connector*, %struct.typec_altmode_desc*, i32)* @ucsi_register_altmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucsi_register_altmode(%struct.ucsi_connector* %0, %struct.typec_altmode_desc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucsi_connector*, align 8
  %6 = alloca %struct.typec_altmode_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.typec_altmode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ucsi_connector* %0, %struct.ucsi_connector** %5, align 8
  store %struct.typec_altmode_desc* %1, %struct.typec_altmode_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %13 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UCSI_CAP_ALT_MODE_OVERRIDE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %112 [
    i32 131, label %25
    i32 130, label %74
  ]

25:                                               ; preds = %3
  %26 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %27 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %26, i32 0, i32 3
  %28 = load %struct.typec_altmode**, %struct.typec_altmode*** %27, align 8
  %29 = call i32 @ucsi_next_altmode(%struct.typec_altmode** %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %10, align 4
  br label %119

34:                                               ; preds = %25
  %35 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %36 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %35, i32 0, i32 3
  %37 = load %struct.typec_altmode**, %struct.typec_altmode*** %36, align 8
  %38 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %6, align 8
  %39 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @ucsi_altmode_next_mode(%struct.typec_altmode** %37, i32 %40)
  %42 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %6, align 8
  %43 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %6, align 8
  %45 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %53 [
    i32 129, label %47
    i32 128, label %47
  ]

47:                                               ; preds = %34, %34
  %48 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %6, align 8
  %52 = call %struct.typec_altmode* @ucsi_register_displayport(%struct.ucsi_connector* %48, i32 %49, i32 %50, %struct.typec_altmode_desc* %51)
  store %struct.typec_altmode* %52, %struct.typec_altmode** %8, align 8
  br label %59

53:                                               ; preds = %34
  %54 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %55 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %6, align 8
  %58 = call %struct.typec_altmode* @typec_port_register_altmode(i32 %56, %struct.typec_altmode_desc* %57)
  store %struct.typec_altmode* %58, %struct.typec_altmode** %8, align 8
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.typec_altmode*, %struct.typec_altmode** %8, align 8
  %61 = call i32 @IS_ERR(%struct.typec_altmode* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.typec_altmode*, %struct.typec_altmode** %8, align 8
  %65 = call i32 @PTR_ERR(%struct.typec_altmode* %64)
  store i32 %65, i32* %10, align 4
  br label %119

66:                                               ; preds = %59
  %67 = load %struct.typec_altmode*, %struct.typec_altmode** %8, align 8
  %68 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %69 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %68, i32 0, i32 3
  %70 = load %struct.typec_altmode**, %struct.typec_altmode*** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %70, i64 %72
  store %struct.typec_altmode* %67, %struct.typec_altmode** %73, align 8
  br label %115

74:                                               ; preds = %3
  %75 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %76 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %75, i32 0, i32 1
  %77 = load %struct.typec_altmode**, %struct.typec_altmode*** %76, align 8
  %78 = call i32 @ucsi_next_altmode(%struct.typec_altmode** %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %10, align 4
  br label %119

83:                                               ; preds = %74
  %84 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %85 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %84, i32 0, i32 1
  %86 = load %struct.typec_altmode**, %struct.typec_altmode*** %85, align 8
  %87 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %6, align 8
  %88 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @ucsi_altmode_next_mode(%struct.typec_altmode** %86, i32 %89)
  %91 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %6, align 8
  %92 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %94 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %6, align 8
  %97 = call %struct.typec_altmode* @typec_partner_register_altmode(i32 %95, %struct.typec_altmode_desc* %96)
  store %struct.typec_altmode* %97, %struct.typec_altmode** %8, align 8
  %98 = load %struct.typec_altmode*, %struct.typec_altmode** %8, align 8
  %99 = call i32 @IS_ERR(%struct.typec_altmode* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %83
  %102 = load %struct.typec_altmode*, %struct.typec_altmode** %8, align 8
  %103 = call i32 @PTR_ERR(%struct.typec_altmode* %102)
  store i32 %103, i32* %10, align 4
  br label %119

104:                                              ; preds = %83
  %105 = load %struct.typec_altmode*, %struct.typec_altmode** %8, align 8
  %106 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %107 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %106, i32 0, i32 1
  %108 = load %struct.typec_altmode**, %struct.typec_altmode*** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.typec_altmode*, %struct.typec_altmode** %108, i64 %110
  store %struct.typec_altmode* %105, %struct.typec_altmode** %111, align 8
  br label %115

112:                                              ; preds = %3
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %133

115:                                              ; preds = %104, %66
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.typec_altmode*, %struct.typec_altmode** %8, align 8
  %118 = call i32 @trace_ucsi_register_altmode(i32 %116, %struct.typec_altmode* %117)
  store i32 0, i32* %4, align 4
  br label %133

119:                                              ; preds = %101, %81, %63, %32
  %120 = load %struct.ucsi_connector*, %struct.ucsi_connector** %5, align 8
  %121 = getelementptr inbounds %struct.ucsi_connector, %struct.ucsi_connector* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %6, align 8
  %126 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.typec_altmode_desc*, %struct.typec_altmode_desc** %6, align 8
  %129 = getelementptr inbounds %struct.typec_altmode_desc, %struct.typec_altmode_desc* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @dev_err(i32 %124, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %127, i8* %130)
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %119, %115, %112
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @ucsi_next_altmode(%struct.typec_altmode**) #1

declare dso_local i8* @ucsi_altmode_next_mode(%struct.typec_altmode**, i32) #1

declare dso_local %struct.typec_altmode* @ucsi_register_displayport(%struct.ucsi_connector*, i32, i32, %struct.typec_altmode_desc*) #1

declare dso_local %struct.typec_altmode* @typec_port_register_altmode(i32, %struct.typec_altmode_desc*) #1

declare dso_local i32 @IS_ERR(%struct.typec_altmode*) #1

declare dso_local i32 @PTR_ERR(%struct.typec_altmode*) #1

declare dso_local %struct.typec_altmode* @typec_partner_register_altmode(i32, %struct.typec_altmode_desc*) #1

declare dso_local i32 @trace_ucsi_register_altmode(i32, %struct.typec_altmode*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
