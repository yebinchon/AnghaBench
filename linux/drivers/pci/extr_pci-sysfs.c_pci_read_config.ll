; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-sysfs.c_pci_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-sysfs.c_pci_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.pci_dev = type { i32, i64 }

@init_user_ns = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_CARDBUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @pci_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pci_read_config(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %23 = load %struct.kobject*, %struct.kobject** %9, align 8
  %24 = call i32 @kobj_to_dev(%struct.kobject* %23)
  %25 = call %struct.pci_dev* @to_pci_dev(i32 %24)
  store %struct.pci_dev* %25, %struct.pci_dev** %14, align 8
  store i32 64, i32* %15, align 4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %16, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %17, align 8
  %29 = load %struct.file*, %struct.file** %8, align 8
  %30 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %31 = call i64 @file_ns_capable(%struct.file* %29, i32* @init_user_ns, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %6
  %34 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %15, align 4
  br label %45

37:                                               ; preds = %6
  %38 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCI_HEADER_TYPE_CARDBUS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 128, i32* %15, align 4
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i64 0, i64* %7, align 8
  br label %225

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %52, %53
  %55 = load i32, i32* %15, align 4
  %56 = zext i32 %55 to i64
  %57 = icmp ugt i64 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %15, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = zext i32 %62 to i64
  store i64 %63, i64* %13, align 8
  br label %67

64:                                               ; preds = %50
  %65 = load i64, i64* %13, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %69 = call i32 @pci_config_pm_runtime_get(%struct.pci_dev* %68)
  %70 = load i32, i32* %12, align 4
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %67
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @pci_user_read_config_byte(%struct.pci_dev* %77, i32 %78, i32* %18)
  %80 = load i32, i32* %18, align 4
  %81 = load i32*, i32** %17, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %16, align 4
  %84 = sub i32 %82, %83
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  store i32 %80, i32* %86, align 4
  %87 = load i32, i32* %12, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %15, align 4
  %90 = add i32 %89, -1
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %76, %73, %67
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 3
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %124

95:                                               ; preds = %91
  %96 = load i32, i32* %15, align 4
  %97 = icmp ugt i32 %96, 2
  br i1 %97, label %98, label %124

98:                                               ; preds = %95
  %99 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @pci_user_read_config_word(%struct.pci_dev* %99, i32 %100, i32* %19)
  %102 = load i32, i32* %19, align 4
  %103 = and i32 %102, 255
  %104 = load i32*, i32** %17, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %16, align 4
  %107 = sub i32 %105, %106
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  store i32 %103, i32* %109, align 4
  %110 = load i32, i32* %19, align 4
  %111 = ashr i32 %110, 8
  %112 = and i32 %111, 255
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %16, align 4
  %116 = sub i32 %114, %115
  %117 = add i32 %116, 1
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %113, i64 %118
  store i32 %112, i32* %119, align 4
  %120 = load i32, i32* %12, align 4
  %121 = add i32 %120, 2
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %15, align 4
  %123 = sub i32 %122, 2
  store i32 %123, i32* %15, align 4
  br label %124

124:                                              ; preds = %98, %95, %91
  br label %125

125:                                              ; preds = %128, %124
  %126 = load i32, i32* %15, align 4
  %127 = icmp ugt i32 %126, 3
  br i1 %127, label %128, label %174

128:                                              ; preds = %125
  %129 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @pci_user_read_config_dword(%struct.pci_dev* %129, i32 %130, i32* %20)
  %132 = load i32, i32* %20, align 4
  %133 = and i32 %132, 255
  %134 = load i32*, i32** %17, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %16, align 4
  %137 = sub i32 %135, %136
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  store i32 %133, i32* %139, align 4
  %140 = load i32, i32* %20, align 4
  %141 = ashr i32 %140, 8
  %142 = and i32 %141, 255
  %143 = load i32*, i32** %17, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %16, align 4
  %146 = sub i32 %144, %145
  %147 = add i32 %146, 1
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %143, i64 %148
  store i32 %142, i32* %149, align 4
  %150 = load i32, i32* %20, align 4
  %151 = ashr i32 %150, 16
  %152 = and i32 %151, 255
  %153 = load i32*, i32** %17, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %16, align 4
  %156 = sub i32 %154, %155
  %157 = add i32 %156, 2
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %153, i64 %158
  store i32 %152, i32* %159, align 4
  %160 = load i32, i32* %20, align 4
  %161 = ashr i32 %160, 24
  %162 = and i32 %161, 255
  %163 = load i32*, i32** %17, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %16, align 4
  %166 = sub i32 %164, %165
  %167 = add i32 %166, 3
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %163, i64 %168
  store i32 %162, i32* %169, align 4
  %170 = load i32, i32* %12, align 4
  %171 = add i32 %170, 4
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %15, align 4
  %173 = sub i32 %172, 4
  store i32 %173, i32* %15, align 4
  br label %125

174:                                              ; preds = %125
  %175 = load i32, i32* %15, align 4
  %176 = icmp uge i32 %175, 2
  br i1 %176, label %177, label %203

177:                                              ; preds = %174
  %178 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @pci_user_read_config_word(%struct.pci_dev* %178, i32 %179, i32* %21)
  %181 = load i32, i32* %21, align 4
  %182 = and i32 %181, 255
  %183 = load i32*, i32** %17, align 8
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %16, align 4
  %186 = sub i32 %184, %185
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  store i32 %182, i32* %188, align 4
  %189 = load i32, i32* %21, align 4
  %190 = ashr i32 %189, 8
  %191 = and i32 %190, 255
  %192 = load i32*, i32** %17, align 8
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %16, align 4
  %195 = sub i32 %193, %194
  %196 = add i32 %195, 1
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %192, i64 %197
  store i32 %191, i32* %198, align 4
  %199 = load i32, i32* %12, align 4
  %200 = add i32 %199, 2
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %15, align 4
  %202 = sub i32 %201, 2
  store i32 %202, i32* %15, align 4
  br label %203

203:                                              ; preds = %177, %174
  %204 = load i32, i32* %15, align 4
  %205 = icmp ugt i32 %204, 0
  br i1 %205, label %206, label %221

206:                                              ; preds = %203
  %207 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %208 = load i32, i32* %12, align 4
  %209 = call i32 @pci_user_read_config_byte(%struct.pci_dev* %207, i32 %208, i32* %22)
  %210 = load i32, i32* %22, align 4
  %211 = load i32*, i32** %17, align 8
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %16, align 4
  %214 = sub i32 %212, %213
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %211, i64 %215
  store i32 %210, i32* %216, align 4
  %217 = load i32, i32* %12, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %12, align 4
  %219 = load i32, i32* %15, align 4
  %220 = add i32 %219, -1
  store i32 %220, i32* %15, align 4
  br label %221

221:                                              ; preds = %206, %203
  %222 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %223 = call i32 @pci_config_pm_runtime_put(%struct.pci_dev* %222)
  %224 = load i64, i64* %13, align 8
  store i64 %224, i64* %7, align 8
  br label %225

225:                                              ; preds = %221, %49
  %226 = load i64, i64* %7, align 8
  ret i64 %226
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i64 @file_ns_capable(%struct.file*, i32*, i32) #1

declare dso_local i32 @pci_config_pm_runtime_get(%struct.pci_dev*) #1

declare dso_local i32 @pci_user_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_user_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_user_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_config_pm_runtime_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
