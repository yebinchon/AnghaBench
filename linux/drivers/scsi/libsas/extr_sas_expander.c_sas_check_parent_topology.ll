; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_check_parent_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_check_parent_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32, %struct.TYPE_2__*, i32, %struct.expander_device }
%struct.TYPE_2__ = type { i32, %struct.expander_device }
%struct.expander_device = type { i32, i32, %struct.ex_phy* }
%struct.ex_phy = type { i64, i64, i32, i32 }

@PHY_VACANT = common dso_local global i64 0, align 8
@PHY_NOT_PRESENT = common dso_local global i64 0, align 8
@SUBTRACTIVE_ROUTING = common dso_local global i32 0, align 4
@TABLE_ROUTING = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*)* @sas_check_parent_topology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_check_parent_topology(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.expander_device*, align 8
  %5 = alloca %struct.expander_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ex_phy*, align 8
  %9 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %10 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %11 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %10, i32 0, i32 3
  store %struct.expander_device* %11, %struct.expander_device** %4, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %13 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %204

17:                                               ; preds = %1
  %18 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %19 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_is_expander(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %204

26:                                               ; preds = %17
  %27 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %28 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store %struct.expander_device* %30, %struct.expander_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %199, %26
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %34 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %202

37:                                               ; preds = %31
  %38 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %39 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %38, i32 0, i32 2
  %40 = load %struct.ex_phy*, %struct.ex_phy** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %40, i64 %42
  store %struct.ex_phy* %43, %struct.ex_phy** %8, align 8
  %44 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %45 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PHY_VACANT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %37
  %50 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %51 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PHY_NOT_PRESENT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %37
  br label %199

56:                                               ; preds = %49
  %57 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %58 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @SAS_ADDR(i32 %59)
  %61 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %62 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @SAS_ADDR(i32 %63)
  %65 = icmp ne i64 %60, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %199

67:                                               ; preds = %56
  %68 = load %struct.expander_device*, %struct.expander_device** %4, align 8
  %69 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %68, i32 0, i32 2
  %70 = load %struct.ex_phy*, %struct.ex_phy** %69, align 8
  %71 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %72 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %70, i64 %73
  store %struct.ex_phy* %74, %struct.ex_phy** %9, align 8
  %75 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %76 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %197 [
    i32 129, label %80
    i32 128, label %177
  ]

80:                                               ; preds = %67
  %81 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %82 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 128
  br i1 %84, label %85, label %105

85:                                               ; preds = %80
  %86 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %87 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SUBTRACTIVE_ROUTING, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %93 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @TABLE_ROUTING, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %91, %85
  %98 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %99 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %100 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %101 = call i32 @sas_print_parent_topology_bug(%struct.domain_device* %98, %struct.ex_phy* %99, %struct.ex_phy* %100)
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %97, %91
  br label %176

105:                                              ; preds = %80
  %106 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %107 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SUBTRACTIVE_ROUTING, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %137

111:                                              ; preds = %105
  %112 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %113 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SUBTRACTIVE_ROUTING, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %119 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %120 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %121 = call i32 @sas_check_eeds(%struct.domain_device* %118, %struct.ex_phy* %119, %struct.ex_phy* %120)
  store i32 %121, i32* %7, align 4
  br label %136

122:                                              ; preds = %111
  %123 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %124 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @TABLE_ROUTING, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %130 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %131 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %132 = call i32 @sas_print_parent_topology_bug(%struct.domain_device* %129, %struct.ex_phy* %130, %struct.ex_phy* %131)
  %133 = load i32, i32* @ENODEV, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %128, %122
  br label %136

136:                                              ; preds = %135, %117
  br label %175

137:                                              ; preds = %105
  %138 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %139 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @TABLE_ROUTING, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %174

143:                                              ; preds = %137
  %144 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %145 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @SUBTRACTIVE_ROUTING, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %165, label %149

149:                                              ; preds = %143
  %150 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %151 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @TABLE_ROUTING, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %149
  %156 = load %struct.expander_device*, %struct.expander_device** %4, align 8
  %157 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.expander_device*, %struct.expander_device** %5, align 8
  %162 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160, %143
  br label %173

166:                                              ; preds = %160, %155, %149
  %167 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %168 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %169 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %170 = call i32 @sas_print_parent_topology_bug(%struct.domain_device* %167, %struct.ex_phy* %168, %struct.ex_phy* %169)
  %171 = load i32, i32* @ENODEV, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %166, %165
  br label %174

174:                                              ; preds = %173, %137
  br label %175

175:                                              ; preds = %174, %136
  br label %176

176:                                              ; preds = %175, %104
  br label %198

177:                                              ; preds = %67
  %178 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %179 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @TABLE_ROUTING, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %189, label %183

183:                                              ; preds = %177
  %184 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %185 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @SUBTRACTIVE_ROUTING, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %183, %177
  %190 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %191 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %192 = load %struct.ex_phy*, %struct.ex_phy** %9, align 8
  %193 = call i32 @sas_print_parent_topology_bug(%struct.domain_device* %190, %struct.ex_phy* %191, %struct.ex_phy* %192)
  %194 = load i32, i32* @ENODEV, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %7, align 4
  br label %196

196:                                              ; preds = %189, %183
  br label %198

197:                                              ; preds = %67
  br label %198

198:                                              ; preds = %197, %196, %176
  br label %199

199:                                              ; preds = %198, %66, %55
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %31

202:                                              ; preds = %31
  %203 = load i32, i32* %7, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %202, %25, %16
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @dev_is_expander(i32) #1

declare dso_local i64 @SAS_ADDR(i32) #1

declare dso_local i32 @sas_print_parent_topology_bug(%struct.domain_device*, %struct.ex_phy*, %struct.ex_phy*) #1

declare dso_local i32 @sas_check_eeds(%struct.domain_device*, %struct.ex_phy*, %struct.ex_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
