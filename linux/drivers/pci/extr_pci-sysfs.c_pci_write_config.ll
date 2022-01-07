; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-sysfs.c_pci_write_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-sysfs.c_pci_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.pci_dev = type { i64 }

@LOCKDOWN_PCI_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @pci_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_write_config(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %22 = load %struct.kobject*, %struct.kobject** %9, align 8
  %23 = call i32 @kobj_to_dev(%struct.kobject* %22)
  %24 = call %struct.pci_dev* @to_pci_dev(i32 %23)
  store %struct.pci_dev* %24, %struct.pci_dev** %14, align 8
  %25 = load i64, i64* %13, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = load i64, i64* %12, align 8
  store i64 %27, i64* %16, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %17, align 8
  %30 = load i32, i32* @LOCKDOWN_PCI_ACCESS, align 4
  %31 = call i32 @security_locked_down(i32 %30)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %7, align 4
  br label %214

36:                                               ; preds = %6
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %214

43:                                               ; preds = %36
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = add i64 %44, %45
  %47 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ugt i64 %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = sub nsw i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %13, align 8
  br label %60

60:                                               ; preds = %51, %43
  %61 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %62 = call i32 @pci_config_pm_runtime_get(%struct.pci_dev* %61)
  %63 = load i64, i64* %12, align 8
  %64 = and i64 %63, 1
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %16, align 8
  %75 = sub nsw i64 %73, %74
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pci_user_write_config_byte(%struct.pci_dev* %70, i64 %71, i32 %77)
  %79 = load i64, i64* %12, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %12, align 8
  %81 = load i32, i32* %15, align 4
  %82 = add i32 %81, -1
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %69, %66, %60
  %84 = load i64, i64* %12, align 8
  %85 = and i64 %84, 3
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %83
  %88 = load i32, i32* %15, align 4
  %89 = icmp ugt i32 %88, 2
  br i1 %89, label %90, label %115

90:                                               ; preds = %87
  %91 = load i32*, i32** %17, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %16, align 8
  %94 = sub nsw i64 %92, %93
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %19, align 4
  %97 = load i32*, i32** %17, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %16, align 8
  %100 = sub nsw i64 %98, %99
  %101 = add nsw i64 %100, 1
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 8
  %105 = load i32, i32* %19, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %19, align 4
  %107 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load i32, i32* %19, align 4
  %110 = call i32 @pci_user_write_config_word(%struct.pci_dev* %107, i64 %108, i32 %109)
  %111 = load i64, i64* %12, align 8
  %112 = add nsw i64 %111, 2
  store i64 %112, i64* %12, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sub i32 %113, 2
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %90, %87, %83
  br label %116

116:                                              ; preds = %119, %115
  %117 = load i32, i32* %15, align 4
  %118 = icmp ugt i32 %117, 3
  br i1 %118, label %119, label %164

119:                                              ; preds = %116
  %120 = load i32*, i32** %17, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %16, align 8
  %123 = sub nsw i64 %121, %122
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %20, align 4
  %126 = load i32*, i32** %17, align 8
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %16, align 8
  %129 = sub nsw i64 %127, %128
  %130 = add nsw i64 %129, 1
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 8
  %134 = load i32, i32* %20, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %20, align 4
  %136 = load i32*, i32** %17, align 8
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* %16, align 8
  %139 = sub nsw i64 %137, %138
  %140 = add nsw i64 %139, 2
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 16
  %144 = load i32, i32* %20, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %20, align 4
  %146 = load i32*, i32** %17, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load i64, i64* %16, align 8
  %149 = sub nsw i64 %147, %148
  %150 = add nsw i64 %149, 3
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = shl i32 %152, 24
  %154 = load i32, i32* %20, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %20, align 4
  %156 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %157 = load i64, i64* %12, align 8
  %158 = load i32, i32* %20, align 4
  %159 = call i32 @pci_user_write_config_dword(%struct.pci_dev* %156, i64 %157, i32 %158)
  %160 = load i64, i64* %12, align 8
  %161 = add nsw i64 %160, 4
  store i64 %161, i64* %12, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sub i32 %162, 4
  store i32 %163, i32* %15, align 4
  br label %116

164:                                              ; preds = %116
  %165 = load i32, i32* %15, align 4
  %166 = icmp uge i32 %165, 2
  br i1 %166, label %167, label %192

167:                                              ; preds = %164
  %168 = load i32*, i32** %17, align 8
  %169 = load i64, i64* %12, align 8
  %170 = load i64, i64* %16, align 8
  %171 = sub nsw i64 %169, %170
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %21, align 4
  %174 = load i32*, i32** %17, align 8
  %175 = load i64, i64* %12, align 8
  %176 = load i64, i64* %16, align 8
  %177 = sub nsw i64 %175, %176
  %178 = add nsw i64 %177, 1
  %179 = getelementptr inbounds i32, i32* %174, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 8
  %182 = load i32, i32* %21, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %21, align 4
  %184 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %185 = load i64, i64* %12, align 8
  %186 = load i32, i32* %21, align 4
  %187 = call i32 @pci_user_write_config_word(%struct.pci_dev* %184, i64 %185, i32 %186)
  %188 = load i64, i64* %12, align 8
  %189 = add nsw i64 %188, 2
  store i64 %189, i64* %12, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sub i32 %190, 2
  store i32 %191, i32* %15, align 4
  br label %192

192:                                              ; preds = %167, %164
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %209

195:                                              ; preds = %192
  %196 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %197 = load i64, i64* %12, align 8
  %198 = load i32*, i32** %17, align 8
  %199 = load i64, i64* %12, align 8
  %200 = load i64, i64* %16, align 8
  %201 = sub nsw i64 %199, %200
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @pci_user_write_config_byte(%struct.pci_dev* %196, i64 %197, i32 %203)
  %205 = load i64, i64* %12, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %12, align 8
  %207 = load i32, i32* %15, align 4
  %208 = add i32 %207, -1
  store i32 %208, i32* %15, align 4
  br label %209

209:                                              ; preds = %195, %192
  %210 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %211 = call i32 @pci_config_pm_runtime_put(%struct.pci_dev* %210)
  %212 = load i64, i64* %13, align 8
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %7, align 4
  br label %214

214:                                              ; preds = %209, %42, %34
  %215 = load i32, i32* %7, align 4
  ret i32 %215
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i32 @security_locked_down(i32) #1

declare dso_local i32 @pci_config_pm_runtime_get(%struct.pci_dev*) #1

declare dso_local i32 @pci_user_write_config_byte(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_user_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_user_write_config_dword(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_config_pm_runtime_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
